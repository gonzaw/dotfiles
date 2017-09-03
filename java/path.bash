#!/bin/bash
# Paths for JAVA

export JAVA_HOME=/usr/lib/jvm/java-8-oracle
export J2SDKDIR=/usr/lib/jvm/java-8-oracle
export J2REDIR=/usr/lib/jvm/java-8-oracle/jre
export DERBY_HOME=/usr/lib/jvm/java-8-oracle/db
export MAVEN_HOME=/home/gonzalo/bin/apache-maven-3.3.1

export PATH=$PATH:$JAVA_HOME/bin:$JAVA_HOME/db/bin:$JAVA_HOME/jre/bin
export PATH=$PATH:$MAVEN_HOME/bin
