#!/bin/sh -l

output=`DATADOG_API_KEY=$INPUT_DATADOG-API-KEY DATADOG_APP_KEY=$INPUT_DATADOG-APP-KEY $GOPATH/src/github.com/amnk/dd2tf/dd2tf $INPUT_SUBCOMMAND --$INPUT_OPTION`
echo ::set-output name=terraform::$output
