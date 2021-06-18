#!/bin/bash

JAVA_OPTS="-Xms256M -Xmx768M -Dcom.sun.management.jmxremote -Duser.language=en -Dlogback.configurationFile=logback.xml"

P=`pwd`
# Setup boot classpath
CLASSPATH=${P}/kickstarter/delta-kickstarter-1.0.jar
CLASSPATH=${CLASSPATH}:${P}/kickstarter/delta-launcher-1.0.jar
CLASSPATH=${CLASSPATH}:${P}/kickstarter/delta-updates-manager-1.0.jar
CLASSPATH=${CLASSPATH}:${P}/kickstarter/delta-downloads-3.1.jar
CLASSPATH=${CLASSPATH}:${P}/kickstarter/delta-common-1.6.4.jar
CLASSPATH=${CLASSPATH}:${P}/kickstarter/httpasyncclient-4.1.4.jar
CLASSPATH=${CLASSPATH}:${P}/kickstarter/httpclient-4.5.5.jar
CLASSPATH=${CLASSPATH}:${P}/kickstarter/httpcore-4.4.9.jar
CLASSPATH=${CLASSPATH}:${P}/kickstarter/httpcore-nio-4.4.10.jar
CLASSPATH=${CLASSPATH}:${P}/kickstarter/commons-codec-1.10.jar
CLASSPATH=${CLASSPATH}:${P}/kickstarter/commons-logging-1.2.jar
CLASSPATH=${CLASSPATH}:${P}/kickstarter/log4j-1.2.14.jar

# Execute the Java Virtual Machine
exec java ${JAVA_OPTS} -classpath "${CLASSPATH}" delta.kickstarter.Kickstarter "$@"
