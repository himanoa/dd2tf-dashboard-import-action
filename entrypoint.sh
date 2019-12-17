#!/bin/sh -l

output=`$GOPATH/src/github.com/amnk/dd2tf/dd2tf $INPUT_SUBCOMMAND $INPUT_OPTION`
echo ::set-output name=terraform::$output
