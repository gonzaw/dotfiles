#!/bin/bash
# Paths for JAVA

export JAVA_HOME=/usr/lib/jvm/java-10-oracle
export J2SDKDIR=/usr/lib/jvm/java-10-oracle
export J2REDIR=/usr/lib/jvm/java-10-oracle/jre
export DERBY_HOME=/usr/lib/jvm/java-10-oracle/db
export MAVEN_HOME=/home/gonzalo/bin/apache-maven-3.3.1

[[ ":$PATH:" != *":$JAVA_HOME/bin:"* ]] && PATH="$JAVA_HOME/bin:${PATH}"
[[ ":$PATH:" != *":$JAVA_HOME/db/bin:"* ]] && PATH="$JAVA_HOME/db/bin:${PATH}"
[[ ":$PATH:" != *":$JAVA_HOME/jre/bin:"* ]] && PATH="$JAVA_HOME/jre/bin:${PATH}"
[[ ":$PATH:" != *":$MAVEN_HOME/bin:"* ]] && PATH="$MAVEN_HOME/bin:${PATH}"