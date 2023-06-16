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
echo "Running SUSHI separately...."
sushi .

echo "Doing a few little fixups:"
echo "  - nzcr-language-map is not an example"
jq '(.definition.resource[] | select(.name == "nzcr-language-map")).exampleBoolean |= false' <fsh-generated/resources/ImplementationGuide-nz.central.ihub.ig.json >temp/fixedIg-01.json

echo "  - nzcr-nz-residency-map is not an example"
jq '(.definition.resource[] | select(.name == "nzcr-nz-residency-map")).exampleBoolean |= false' <temp/fixedIg-01.json >temp/fixedIg-02.json

echo "  - nzcr-ethnicity-2to4-map is not an example"
jq '(.definition.resource[] | select(.name == "nzcr-ethnicity-2to4-map")).exampleBoolean |= false' <temp/fixedIg-02.json >temp/fixedIg-03.json

cp temp/fixedIg-03.json fsh-generated/resources/ImplementationGuide-nz.central.ihub.ig.json

echo "Running IG Publisher..."
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
