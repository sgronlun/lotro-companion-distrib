#!/bin/bash

JAVA_OPTS="-Xms256M -Xmx768M -Dcom.sun.management.jmxremote -Duser.language=en -Dlogback.configurationFile=logback.xml"

P=`pwd`
# Setup boot classpath
CLASSPATH=${P}/launcher/delta-launcher-1.0.jar
CLASSPATH=${CLASSPATH}:${P}/launcher/delta-common-1.6.3.jar
CLASSPATH=${CLASSPATH}:${P}/launcher/log4j-1.2.14.jar

# Execute the Java Virtual Machine
exec java ${JAVA_OPTS} -classpath "${CLASSPATH}" delta.launcher.Launcher "$@"
