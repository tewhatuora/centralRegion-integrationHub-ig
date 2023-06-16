#!/bin/bash
publisher_jar=publisher.jar
input_cache_path=./input-cache/
echo Checking internet connection...
curl -sSf tx.fhir.org > /dev/null

if [ $? -eq 0 ]; then
	echo "Online"
	txoption=""
else
	echo "Offline"
	txoption="-tx n/a"
fi

echo "$txoption"

export JAVA_TOOL_OPTIONS="$JAVA_TOOL_OPTIONS -Dfile.encoding=UTF-8"

#
## We need to do a fixup after SUSHI and before IG-Publisher
#
sushi .

jq '.definition.resource[70].exampleBoolean |= false' <fsh-generated/resources/ImplementationGuide-nz.central.ihub.ig.json >temp/fixedIg.json
cp temp/fixedIg.json fsh-generated/resources/ImplementationGuide-nz.central.ihub.ig.json

publisher=$input_cache_path/$publisher_jar
if test -f "$publisher"; then
	java -jar $publisher -ig . $txoption -no-sushi $*

else
	publisher=../$publisher_jar
	if test -f "$publisher"; then
		java -jar $publisher -ig . $txoption -no-sushi $*
	else
		echo IG Publisher NOT FOUND in input-cache or parent folder.  Please run _updatePublisher.  Aborting...
	fi
fi
