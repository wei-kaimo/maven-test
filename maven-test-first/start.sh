#!/bin/sh
CLASSPATH=$JAVA_HOME/lib/
PATH=$PATH:$JAVA_HOME/bin
APP_NAME=maven-test-first
JAR_FILE=maven-test-first-0.0.1-SNAPSHOT.jar
echo $APP_NAME
if [ "$JAVACMD" = "" ] ; then
   JAVACMD=$JAVA_HOME/bin/java
   RMICMD=$JAVA_HOME/bin/rmiregistry
fi

nohup $JAVACMD -jar -DPGM_ID=$APP_NAME -DAPP_NAME=$APP_NAME -Dfile.encoding=UTF-8 $JAR_FILE >/dev/null 2>&1 &

echo "starting completed,press CTRL+C to exit >>>>>"
