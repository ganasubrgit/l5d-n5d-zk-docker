#!/bin/bash
zkServer.sh start 
sleep 60 
zkCli.sh create /dtabs "default" 
zkServer.sh stop
zkServer.sh start-foreground