pipeline {
        agent any
        stage("publish to s3") {
        step([
            $class: 'S3BucketPublisher',
            entries: [[
                sourceFile: 'Dockerfile',
                bucket: 'luiz-test',
                noUploadOnFailure: true,
                managedArtifacts: true,
                flatten: true,
                showDirectlyInBrowser: true,
                keepForever: true,
            ]],
            profileName: 'myprofile',
            dontWaitForConcurrentBuildCompletion: false, 
        ])
    }
}