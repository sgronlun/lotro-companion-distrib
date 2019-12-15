#!/bin/bash

JAVA_OPTS="-Xms256M -Xmx768M -Dcom.sun.management.jmxremote -Duser.language=en -Dlogback.configurationFile=logback.xml"

P=`pwd`
# Setup boot classpath
CLASSPATH=${P}/lib/patches
CLASSPATH=${CLASSPATH}:${P}/lib/delta-lotro-companion-11.0.jar
CLASSPATH=${CLASSPATH}:${P}/lib/delta-lotro-maps-2.0.jar
CLASSPATH=${CLASSPATH}:${P}/lib/delta-lotro-core-11.0.jar
CLASSPATH=${CLASSPATH}:${P}/lib/delta-common-ui-1.10.jar
CLASSPATH=${CLASSPATH}:${P}/lib/delta-common-1.6.jar
CLASSPATH=${CLASSPATH}:${P}/lib/jcommon-1.0.16.jar
CLASSPATH=${CLASSPATH}:${P}/lib/jfreechart-1.0.13.jar
CLASSPATH=${CLASSPATH}:${P}/lib/log4j-over-slf4j-1.7.28.jar
CLASSPATH=${CLASSPATH}:${P}/lib/logback-classic-1.2.3.jar
CLASSPATH=${CLASSPATH}:${P}/lib/logback-core-1.2.3.jar
CLASSPATH=${CLASSPATH}:${P}/lib/slf4j-api-1.7.28.jar
CLASSPATH=${CLASSPATH}:${P}/lib/icons.zip
CLASSPATH=${CLASSPATH}:${P}/lib/relicIcons.zip
CLASSPATH=${CLASSPATH}:${P}/lib/traitIcons.zip
CLASSPATH=${CLASSPATH}:${P}/lib/titleIcons.zip
CLASSPATH=${CLASSPATH}:${P}/lib/emoteIcons.zip
CLASSPATH=${CLASSPATH}:${P}/lib/effectIcons.zip
CLASSPATH=${CLASSPATH}:${P}/lib/legaciesIcons.zip
CLASSPATH=${CLASSPATH}:${P}/lib/skillIcons.zip
CLASSPATH=${CLASSPATH}:${P}/lib/virtueIcons.zip

# Execute the Java Virtual Machine
exec java ${JAVA_OPTS} -classpath "${CLASSPATH}" delta.games.lotro.Main "$@"
