pipeline {
        agent any
        stages {
            stage('publish to s3') {
                steps {
                    withAWS(profile:'default') {
                        s3Upload(pathStyleAccessEnabled: true, payloadSigningEnabled: true, file:'Dockerfile', bucket:'luiz-test', path:'Dockerfile')
                    }
                }
        }
    }
}