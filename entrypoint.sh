#!/bin/sh -l

output=`DATADOG_API_KEY=$INPUT_DATADOG_API_KEY DATADOG_APP_KEY=$INPUT_DATADOG_APP_KEY $GOPATH/src/github.com/amnk/dd2tf/dd2tf $INPUT_SUBCOMMAND $INPUT_OPTION`
echo ::set-output name=terraform::$output
