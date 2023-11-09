pipeline {
    agent {
        docker {
            image 'node:20.9.0-alpine3.18' 
            args '-p 3000:3000' 
        }
    }
    triggers {
        pollSCM '* * * * *'
    }
    stages {
        stage('Build') { 
            steps {
                sh 'npm install' 
            }
        }
        stage('Test') { 
            steps {
                sh "chmod +x ./scripts/test.sh"
                sh './scripts/test.sh' 
            }
        }
        stage('Deliver') {
            steps {
                sh "chmod +x ./scripts/deliver.sh"
                sh './scripts/deliver.sh'
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                sh "chmod +x ./scripts/kill.sh"
                sh './scripts/kill.sh'
            }
        }
    }
}