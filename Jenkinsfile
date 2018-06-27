pipeline {
    agent any 
    stages {
        stage('Run HTTP repo'){
            steps{
                build job: 'runHTTPD'
            }
        }
        stage('Build Omnibus image 8.1.0.9'){
            steps{
                build job: 'buildOmnibusImageFP9'
            }
        }
        stage('Run Omnibus image 8.1.0.9'){
            steps{
                build job: 'runObjectServerFP9'
            }
        }
    }
}



