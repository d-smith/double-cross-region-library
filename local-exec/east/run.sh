#!/bin/bash

echo Using $PROXY_HOST $PROXY_PORT

java -Dhttps.proxyHost=$PROXY_HOST -Dhttps.proxyPort=$PROXY_PORT \
-jar ../../target/double-cross-region-replication-1.2.1.jar \
 --sourceTable PKTestTable3 --hashAttrName Id --sourceRegion us-east-1 --destinationRegion us-west-2 --destinationTable PKTestTable3 --taskName east
