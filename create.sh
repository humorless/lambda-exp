#!/bin/bash

FUNCNAME="clojure-lambda-exp"
AWS_ACCOUNT_ID=12345

aws lambda create-function \
    --region ap-northeast-1 \
    --function-name "${FUNCNAME}" \
    --zip-file fileb://$(pwd)/target/uberjar/lambda-exp-0.1.0-SNAPSHOT-standalone.jar \
    --role arn:aws:iam::"${AWS_ACCOUNT_ID}":role/lambda_basic_execution \
    --handler lambda-exp.core.lambdafn \
    --runtime java8 \
    --timeout 15 \
    --memory-size 512
