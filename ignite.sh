#!/bin/bash

CLASS=$1

# Package project
sbt package

PACKAGE=$(sbt "show packageBin" | sed "s,\x1B\[[0-9;]*[a-zA-Z],,g" | sed -rn 's/\[info\] ([C|\/].*)\.jar/\1.jar/p')

# Find all class files
DEPENDENCIES=$(sbt "show runtime:fullClasspath" | sed -rn 's/.*Attributed\((.+)\.jar\)/\1.jar/p')
function join_by { local IFS="$1"; shift; echo "$*"; }

JARS=$(join_by , $DEPENDENCIES),$PACKAGE
COMMAND="spark-submit --jars $JARS --class $CLASS --master local $PACKAGE"

echo $COMMAND

$COMMAND