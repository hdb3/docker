#!/bin/bash
cd /root/floodlight-1.1
java -jar -Dlogback.configurationFile=logback.xml target/floodlight.jar
