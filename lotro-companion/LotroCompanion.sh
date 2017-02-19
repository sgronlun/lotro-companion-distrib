#!/bin/bash

JAVA_OPTS="-Xms8M -Xmx512M -Dcom.sun.management.jmxremote -Duser.language=en"

# Setup boot classpath
CLASSPATH=lib/patchs/log-config.jar
CLASSPATH=${CLASSPATH}:lib/delta-common-1.2.jar
CLASSPATH=${CLASSPATH}:lib/delta-lotro-core-4.0.jar
CLASSPATH=${CLASSPATH}:lib/delta-lotro-companion-4.0.jar
CLASSPATH=${CLASSPATH}:lib/jcommon-1.0.16.jar
CLASSPATH=${CLASSPATH}:lib/jfreechart-1.0.13.jar
CLASSPATH=${CLASSPATH}:lib/log4j-1.2.14.jar
CLASSPATH=${CLASSPATH}:lib/icons.zip
CLASSPATH=${CLASSPATH}:lib/relicIcons.zip

# Execute the Java Virtual Machine
exec java ${JAVA_OPTS} -classpath "${CLASSPATH}" delta.games.lotro.Main "$@"
