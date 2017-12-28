docker build ./ -t luizgj/mulesoft

docker run -d luizgj/mulesoft

docker run -t -i luizgj/mulesoft2 /bin/bash

JENKINS_CRUMB=`curl "http://ip172-18-0-6-b92eam8l9m7g009a8sh0-8080.direct.labs.play-with-docker.com/crumbIssuer/api/xml?xpath=concat(//crumbRequestField,\":\",//crumb)"`
curl -X POST -H $JENKINS_CRUMB -F "jenkinsfile=<Jenkinsfile" curl -X POST -H http://ip172-18-0-6-b92eam8l9m7g009a8sh0-8080.direct.labs.play-with-docker.com -F "jenkinsfile=<Jenkinsfile" http://ip172-18-0-6-b92eam8l9m7g009a8sh0-8080.direct.labs.play-with-docker.com/pipeline-model-converter/validate