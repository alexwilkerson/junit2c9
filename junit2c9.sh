#!/bin/bash

# This script appends the .profile file with the correct environment
# variables to use JUnit on c9.io.

JUNIT="/usr/share/java/junit4.jar"
HAMCREST="/usr/share/java/hamcrest-core-1.3.jar"
BASH_PROFILE="/home/ubuntu/.profile"

echo "junit2c9 linking JUnit to Java classpath..."

if [[ -f $JUNIT && -f $HAMCREST && -f $BASH_PROFILE ]]; then
    echo -e "\n# This section appended with junit2c9" >> $BASH_PROFILE 
    echo "set JUNIT_HOME=/usr/share/java" >> $BASH_PROFILE
    echo -e "export CLASSPATH=\$CLASSPATH:\$JUNIT_HOME/junit4.jar\n" >> $BASH_PROFILE
    exit 0
else
    echo "One of the required files does not exist. Exiting..."
    exit 1
fi
