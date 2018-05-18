#!/bin/bash

FUNCNAME="clojure-lambda-exp"

aws lambda invoke \
    --invocation-type RequestResponse \
    --function-name "${FUNCNAME}" \
    --region ap-northeast-1 \
    --log-type Tail \
    --payload '{"max":10}' \
    outfile.txt
