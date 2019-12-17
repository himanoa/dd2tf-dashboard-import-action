#!/bin/sh -l

echo $INPUT_OPTION
echo $INPUT_SUBCOMMAND
output=`$GOPATH/src/github.com/amnk/dd2tf/dd2tf $1 $2`
echo ::set-output name=terraform::$output
