export ATG_ROOT=/opt/ATG/ATG10.0.2
export DYNAMO_ROOT=$ATG_ROOT
export DYNAMO_HOME=$ATG_ROOT/home
export ATG_HOME=$DYNAMO_HOME
export MYSQL_HOME=/usr/local/mysql
export ANT_HOME=/opt/ant
export JBOSS_HOME=/opt/jboss-eap-5.1/jboss-as
export GROOVY_HOME=/opt/groovy
export GANT_HOME=/opt/gant
export GRADLE_HOME=/opt/gradle
# Use this if needs options
# export GRADLE_OPTS=
# export JAVA_OPTS=
# This is for Java6
export JAVA_HOME=`/usr/libexec/java_home`
export ATGJRE=$JAVA_HOME/bin/java
export TW_TOOLKIT_ROOT=$ATG_ROOT/TWToolkit
export PATH=$JAVA_HOME/bin:$MYSQL_HOME/bin:$ANT_HOME/bin:$JBOSS_HOME/bin:$GROOVY_HOME/bin:$GANT_HOME/bin:$GRADLE_HOME/bin:$PATH
export COMPUTERNAME=`hostname`
export MAVEN_HOME=/opt/maven
# TO ADD THE CLASSPATH TO GANT: 
export STARTER_CLASSPATH=$TW_TOOLKIT_ROOT/toolkit/groovy
