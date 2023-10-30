#!/bin/sh
cd `dirname $0`
ROOT_PATH=`pwd`
java -Dtalend.component.manager.m2.repository=$ROOT_PATH/../lib -Xms256M -Xmx1024M -Dfile.encoding=UTF-8 -cp .:$ROOT_PATH:$ROOT_PATH/../lib/routines.jar:$ROOT_PATH/../lib/log4j-slf4j-impl-2.13.2.jar:$ROOT_PATH/../lib/log4j-api-2.13.2.jar:$ROOT_PATH/../lib/log4j-core-2.13.2.jar:$ROOT_PATH/../lib/jboss-marshalling-2.0.12.Final.jar:$ROOT_PATH/../lib/httpclient-4.5.13.jar:$ROOT_PATH/../lib/talend_file_enhanced-1.1.jar:$ROOT_PATH/../lib/commons-codec-1.14.jar:$ROOT_PATH/../lib/jackson-core-2.11.4.jar:$ROOT_PATH/../lib/joda-time-2.8.1.jar:$ROOT_PATH/../lib/commons-logging-1.2.jar:$ROOT_PATH/../lib/httpcore-4.4.13.jar:$ROOT_PATH/../lib/aws-java-sdk-1.11.848.jar:$ROOT_PATH/../lib/jackson-annotations-2.11.4.jar:$ROOT_PATH/../lib/jackson-databind-2.11.4.jar:$ROOT_PATH/../lib/dom4j-2.1.3.jar:$ROOT_PATH/../lib/jakarta-oro-2.0.8.jar:$ROOT_PATH/../lib/slf4j-api-1.7.29.jar:$ROOT_PATH/../lib/talendcsv-1.0.0.jar:$ROOT_PATH/../lib/crypto-utils-0.31.12.jar:$ROOT_PATH/date_stagging_up_0_1.jar: parcial3_ge11002.date_stagging_up_0_1.date_stagging_up "$@"
