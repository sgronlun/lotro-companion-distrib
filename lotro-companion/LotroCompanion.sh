#!/bin/bash

JAVA_OPTS="-Xms8M -Xmx32M -Dcom.sun.management.jmxremote -Duser.language=en"

# Setup boot classpath
CLASSPATH=lib/patchs/log-config.jar
CLASSPATH=${CLASSPATH}:lib/commons-codec-1.2.jar
CLASSPATH=${CLASSPATH}:lib/commons-httpclient-3.1.jar
CLASSPATH=${CLASSPATH}:lib/commons-logging-1.0.4.jar
CLASSPATH=${CLASSPATH}:lib/delta-lotro-3.0.jar
CLASSPATH=${CLASSPATH}:lib/delta-json-1.0.jar
CLASSPATH=${CLASSPATH}:lib/delta-downloads-1.1.jar
CLASSPATH=${CLASSPATH}:lib/delta-common-1.1.jar
CLASSPATH=${CLASSPATH}:lib/jcommon-1.0.16.jar
CLASSPATH=${CLASSPATH}:lib/jericho-html-3.2.jar
CLASSPATH=${CLASSPATH}:lib/jfreechart-1.0.13.jar
CLASSPATH=${CLASSPATH}:lib/log4j-1.2.14.jar

# Execute the Java Virtual Machine
exec java ${JAVA_OPTS} -classpath "${CLASSPATH}" delta.games.lotro.Main "$@"
