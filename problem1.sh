#!/bin/bash
yum install zip unzip -y
mkdir testproblem1
mkdir outputprob1
touch ./testproblem1/test.csv ./testproblem1/test.txt
cp ./testproblem1/test.csv ./outputprob1
zip problem1.zip outputprob1
scp problem1.zip user@remote.server.fi:/path/to/location
