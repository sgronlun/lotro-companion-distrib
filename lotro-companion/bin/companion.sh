#!/bin/bash

# Overrides
# - JVM memory configuration
JAVA_MIN_MEM=8M
JAVA_MAX_MEM=32M
# - language
#LANGUAGE=en

LAUNCH_SCRIPT=`dirname "$0"`/appLauncher
source "${LAUNCH_SCRIPT}"
