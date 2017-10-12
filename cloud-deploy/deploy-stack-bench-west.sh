#!/bin/bash

aws cloudformation create-stack --stack-name replicator5 \
--template-body file://replicator.yml --parameters \
ParameterKey=BucketRoot,ParameterValue=$BUCKET_ROOT \
ParameterKey=KeyName,ParameterValue=FIDO-OR \
ParameterKey=SourceTable,ParameterValue=PKTestTable3 \
ParameterKey=DestTable,ParameterValue=PKTestTable3 \
ParameterKey=HashAttrName,ParameterValue=Id \
ParameterKey=ClusterName,ParameterValue=r5cluster \
ParameterKey=InstanceType,ParameterValue=m4.large \
ParameterKey=SourceRegion,ParameterValue=us-west-2 \
ParameterKey=DestRegion,ParameterValue=us-east-1 \
ParameterKey=TaskName,ParameterValue=hc1-west \
--capabilities CAPABILITY_IAM
