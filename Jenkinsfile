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
                build job: 'buildOmnibusImageFP'
            }
        }
        stage('Run Omnibus image 8.1.0.9'){
            steps{
                build job: 'runObjectServerFP9'
            }
        }
        stage('Testing dev object server and probe'){
            steps{
                build job: 'TestEnvironment'
            }
        }
       stage('Deploy to production'){
            steps{
                timeout(time:5, unit:'DAYS'){
                    input message:'Approve PRODUCTION deployment'
                }
                build job: 'TestEnvironment'
            }
            post{
                success {
                    echo "Code deployed to production"
                }
                failure {
                    echo "Deployment failed"
                }
            }
        }
    }
}



