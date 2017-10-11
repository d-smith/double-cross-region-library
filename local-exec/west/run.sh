#!/bin/bash

java -Dhttps.proxyHost=$PROXY_HOST -Dhttps.proxyPort=$PROXY_PORT \
-jar ../../target/double-cross-region-replication-1.2.1.jar \
--sourceTable PKTestTable3 --hashAttrName Id --sourceRegion us-west-2 --destinationRegion us-east-1 --destinationTable PKTestTable3 --taskName west
