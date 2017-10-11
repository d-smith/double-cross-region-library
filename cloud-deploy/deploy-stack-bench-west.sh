#!/bin/bash

aws cloudformation create-stack --stack-name replicator5 \
--template-body file://replicator.yml --parameters \
ParameterKey=BucketRoot,ParameterValue=$BUCKET_ROOT \
ParameterKey=KeyName,ParameterValue=FIDO-OR \
ParameterKey=SourceTable,ParameterValue=PKTestTable \
ParameterKey=DestTable,ParameterValue=PKTestTable \
ParameterKey=HashAttrName,ParameterValue=Id \
ParameterKey=ClusterName,ParameterValue=r5cluster \
ParameterKey=InstanceType,ParameterValue=m4.large \
ParameterKey=SourceRegion,ParameterValue=us-west-2 \
ParameterKey=DestRegion,ParameterValue=us-east-1 \
--capabilities CAPABILITY_IAM
