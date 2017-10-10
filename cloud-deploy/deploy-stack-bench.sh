#!/bin/bash

aws cloudformation create-stack --stack-name replicator2 \
--template-body file://replicator.yml --parameters \
ParameterKey=BucketRoot,ParameterValue=$BUCKET_ROOT \
ParameterKey=KeyName,ParameterValue=FidoKeyPair \
ParameterKey=SourceTable,ParameterValue=PKTestTable \
ParameterKey=DestTable,ParameterValue=PKTestTable \
ParameterKey=HashAttrName,ParameterValue=id \
ParameterKey=ClusterName,ParameterValue=r2cluster \
ParameterKey=InstanceType,ParameterValue=m4.large \
--capabilities CAPABILITY_IAM