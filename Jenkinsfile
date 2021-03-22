pipeline {
    agent any
    stages {
        stage('checkout') {
            steps {
                git credentialsId: '39250bc3-383c-41b3-b43b-9c9ed9040c27', url: 'https://github.com/samgithubadmin/spring-petclinic.git'
            }
        }
        stage('Build') {
         steps {
             sh 'mvn clean package'
            }
        }
        stage('Junit test') {
            steps {
                junit 'target/surefire-reports/*.xml'
            }
        }
        stage('s3 bucket') {
            steps {
                s3Upload consoleLogLevel: 'INFO', dontSetBuildResultOnFailure: false, dontWaitForConcurrentBuildCompletion: false, entries: [[bucket: 'sams3bucket1', excludedFile: '3', flatten: false, gzipFiles: false, keepForever: false, managedArtifacts: false, noUploadOnFailure: false, selectedRegion: 'us-east-2', showDirectlyInBrowser: false, sourceFile: '*/**.jar', storageClass: 'STANDARD', uploadFromSlave: false, useServerSideEncryption: false]], pluginFailureResultConstraint: 'FAILURE', profileName: 'bucket', userMetadata: []
            }
        }
    }}
