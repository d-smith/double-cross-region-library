#!/bin/bash

aws cloudformation create-stack --stack-name replicator \
--template-body file://replicator.yml --parameters \
ParameterKey=BucketRoot,ParameterValue=$BUCKET_ROOT \
ParameterKey=KeyName,ParameterValue=FidoKeyPair \
ParameterKey=SourceTable,ParameterValue=serverless-rest-api-with-dynamodb-hc1 \
ParameterKey=DestTable,ParameterValue=serverless-rest-api-with-dynamodb-hc1 \
ParameterKey=HashAttrName,ParameterValue=id \
ParameterKey=ClusterName,ParameterValue=CharlieFoxtrot \
--capabilities CAPABILITY_IAM