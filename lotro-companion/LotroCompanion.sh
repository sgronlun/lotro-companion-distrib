#!/bin/bash

JAVA_OPTS="-Xms256M -Xmx768M -Dcom.sun.management.jmxremote -Duser.language=en -Dlogback.configurationFile=logback.xml"

P=`pwd`
# Setup boot classpath
CLASSPATH=${P}/lib/patches
CLASSPATH=${CLASSPATH}:${P}/lib/delta-lotro-companion-14.0.jar
CLASSPATH=${CLASSPATH}:${P}/lib/delta-lotro-interceptor-1.1.jar
CLASSPATH=${CLASSPATH}:${P}/lib/delta-lotro-dat-utils-5.0.jar
CLASSPATH=${CLASSPATH}:${P}/lib/delta-json-1.1.1.jar
CLASSPATH=${CLASSPATH}:${P}/lib/delta-lotro-maps-3.0.jar
CLASSPATH=${CLASSPATH}:${P}/lib/delta-lotro-core-14.0.jar
CLASSPATH=${CLASSPATH}:${P}/lib/delta-common-ui-1.12.jar
CLASSPATH=${CLASSPATH}:${P}/lib/delta-common-1.6.2.jar
CLASSPATH=${CLASSPATH}:${P}/lib/pcap4j-core-1.8.2.jar
CLASSPATH=${CLASSPATH}:${P}/lib/pcap4j-packetfactory-static-1.8.2.jar
CLASSPATH=${CLASSPATH}:${P}/lib/jna-5.3.1.jar
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
CLASSPATH=${CLASSPATH}:${P}/lib/petIcons.zip
CLASSPATH=${CLASSPATH}:${P}/lib/mountIcons.zip
CLASSPATH=${CLASSPATH}:${P}/lib/miscIcons.zip

# Execute the Java Virtual Machine
exec java ${JAVA_OPTS} -classpath "${CLASSPATH}" delta.games.lotro.Main "$@"
