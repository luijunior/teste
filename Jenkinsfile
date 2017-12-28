pipeline {
        agent any
        stages {
            stage("publish to s3") {
                withAWS(credentials:'myprofile') {
                    s3Upload(pathStyleAccessEnabled: true, payloadSigningEnabled: true, file:'Dockerfile', bucket:'luiz-test', path:'Dockerfile')
                }
        }
    }
}