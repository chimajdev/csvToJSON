# Ark PES / Cloud Engineer / Coding Assessment

#### 1. Clone the repo bitbucket or github

i. git clone git@bitbucket.org:josephchima/ark.git

ii. git clone https://github.com/chimajdev/csvToJSON

#### 2. problem1.sh
i. Run the command 'bash problem1.sh'

- This command will install zip (centos), make 2 directories, copy the .csv file to outputprob1 directory and archive as problem1.zip file

- Zip csv folder and copy it over ssh into another server.

#### 3. problem2.sh
i. aws cli test: Reads latest task definition from ecs for a service named ‘api’ from a ‘ref’ cluster

ii. Reads the image name from latest task you read above, then creates and registers new task definition while copying the image name from latest task

iii. Update ‘api’ service with the new task definition

#### 4. problem3.sh
i. Run the command 'bash problem3.sh'

- This script will curl the provided url and export the content to output.csv

ii. then run 'python csvtojson.py'

- This script will convert the output.csv file to a .json format with file name csv2json.json.
