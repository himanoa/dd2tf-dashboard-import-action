#!/bin/sh -l

export DATADOG_APP_KEY=$INPUT_DATADOG_APP_KEY
export DATADOG_API_KEY=$INPUT_DATADOG_API_KEY
output=`$GOPATH/src/github.com/amnk/dd2tf/dd2tf $INPUT_SUBCOMMAND --$INPUT_OPTION`
echo ::set-output name=terraform::$output
