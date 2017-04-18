#!/bin/bash
V_PWD=`pwd`
V_LINK=http://www-eu.apache.org/dist/maven/maven-3/3.5.0/binaries/apache-maven-3.5.0-bin.tar.gz

source $V_PWD/pre-install.sh
curl -s -O $V_LINK
tar xzf apache-maven-3.5.0-bin.tar.gz
mkdir -p ~/.soft/maven/3.5.0/
mv -f apache-maven-3.5.0/* ~/.soft/maven/3.5.0/
ln -sf ~/.soft/maven/3.5.0/bin/mvn ~/bin/mvn
source $V_PWD/post-install.sh