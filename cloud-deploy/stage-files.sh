#!/bin/bash

for f in *.y*ml; do aws s3 cp $f s3://$DEPLOY_BUCKET; done