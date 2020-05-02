#!/usr/bin/env bash

if [ -f "/opt/hadoop/bin/hadoop" ]; then
  export SPARK_DIST_CLASSPATH=$(hadoop classpath)
fi

call-next-plugin "$@"
