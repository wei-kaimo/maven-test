#!/bin/sh
APP_NAME=maven-test-first
if [ -n "$APP_NAME" ]; then
	echo $APP_NAME;
else
	echo 'Pls input APP_NAME';
	exit;
fi
`ps -ef|grep DPGM_ID=$APP_NAME|grep -v grep|awk '{print "kill -9 "$2}'`
