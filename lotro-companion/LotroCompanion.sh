#!/bin/bash

JAVA_OPTS="-Xms256M -Xmx512M -Dcom.sun.management.jmxremote -Duser.language=en"

P=`pwd`
# Setup boot classpath
CLASSPATH=${P}/lib/delta-lotro-companion-10.0.jar
CLASSPATH=${CLASSPATH}:${P}/lib/delta-lotro-maps-2.0.jar
CLASSPATH=${CLASSPATH}:${P}/lib/delta-lotro-core-10.0.jar
CLASSPATH=${CLASSPATH}:${P}/lib/delta-common-ui-1.8.jar
CLASSPATH=${CLASSPATH}:${P}/lib/delta-common-1.5.jar
CLASSPATH=${CLASSPATH}:${P}/lib/jcommon-1.0.16.jar
CLASSPATH=${CLASSPATH}:${P}/lib/jfreechart-1.0.13.jar
CLASSPATH=${CLASSPATH}:${P}/lib/log4j-1.2.14.jar
CLASSPATH=${CLASSPATH}:${P}/lib/icons.zip
CLASSPATH=${CLASSPATH}:${P}/lib/relicIcons.zip
CLASSPATH=${CLASSPATH}:${P}/lib/traitIcons.zip
CLASSPATH=${CLASSPATH}:${P}/lib/titleIcons.zip
CLASSPATH=${CLASSPATH}:${P}/lib/emoteIcons.zip

# Execute the Java Virtual Machine
exec java ${JAVA_OPTS} -classpath "${CLASSPATH}" delta.games.lotro.Main "$@"
