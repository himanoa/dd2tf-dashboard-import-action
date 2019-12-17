#!/bin/sh -l

output=`./dd2tf $1 $2`
echo ::set-output name=time::$output
