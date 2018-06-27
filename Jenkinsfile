pipeline {
    agent any 
    stages {
        stage('Run HTTP repo'){
            steps{
                build job: 'runHTTPD'
            }
        }
        stage('Build Omnibus image 8.1.0.5'){
            steps{
                build job: 'buildOmnibusImage'
            }
        }
        stage('Run Omnibus image 8.1.0.5'){
            steps{
                build job: 'runObjectServer'
            }
        }
    }
}



