#!/bin/bash

# filter the CapabilityStatement into three separate files (to make the HTML more human readable)
for i in clinical terminology foundation 
do
   ./localscripts/makeCapabilityStatement.js $i
done

## ...and now the normal stuff
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

publisher=$input_cache_path/$publisher_jar
if test -f "$publisher"; then
	java -jar $publisher -ig . $txoption $*

else
	publisher=../$publisher_jar
	if test -f "$publisher"; then
		java -jar $publisher -ig . $txoption $*
	else
		echo IG Publisher NOT FOUND in input-cache or parent folder.  Please run _updatePublisher.  Aborting...
	fi
fi

# SmileCDR chokes on the examples in the IG package.tgz - gotta do a fixup
echo "Fixing ImplementationGuide in package.tgz..."
cd output
tar xzf package.tgz
cd package
jq 'del(.definition.resource[] | select(.exampleCanonical != null))' <ImplementationGuide-nz.central.ihub.ig.json > fixed.json
rm ImplementationGuide-nz.central.ihub.ig.json
mv fixed.json ImplementationGuide-nz.central.ihub.ig.json
cd ..
mv package.tgz package.orig.tgz
tar czf package.tgz package
rm -rf package
cd ..
echo "Fixed IG in package.tgz"

