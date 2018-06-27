pipeline {
    agent any 
    stages {
        stage('Run HTTP repo'){
            steps{
                build job: 'runHTTPD'
            }
        }
        stage('Build Omnibus image'){
            steps{
                build job: 'buildOmnibusImageFP9'
            }
        }
    }
}



