#!/bin/sh -l

output=`$GOPATH/src/github.com/amnk/dd2tf/dd2tf $1 $2`
echo ::set-output name=terraform::$output
