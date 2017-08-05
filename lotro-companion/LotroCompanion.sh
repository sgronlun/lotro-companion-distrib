#!/bin/bash

JAVA_OPTS="-Xms256M -Xmx512M -Dcom.sun.management.jmxremote -Duser.language=en"

# Setup boot classpath
CLASSPATH=lib/delta-lotro-companion-5.0.jar
CLASSPATH=${CLASSPATH}:lib/delta-lotro-maps-1.0.jar
CLASSPATH=${CLASSPATH}:lib/delta-lotro-core-5.0.jar
CLASSPATH=${CLASSPATH}:lib/delta-common-ui-1.0.jar
CLASSPATH=${CLASSPATH}:lib/delta-common-1.3.jar
CLASSPATH=${CLASSPATH}:lib/jcommon-1.0.16.jar
CLASSPATH=${CLASSPATH}:lib/jfreechart-1.0.13.jar
CLASSPATH=${CLASSPATH}:lib/log4j-1.2.14.jar
CLASSPATH=${CLASSPATH}:lib/icons.zip
CLASSPATH=${CLASSPATH}:lib/relicIcons.zip

# Execute the Java Virtual Machine
exec java ${JAVA_OPTS} -classpath "${CLASSPATH}" delta.games.lotro.Main "$@"
