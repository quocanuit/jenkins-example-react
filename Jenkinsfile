pipeline {
    agent {
        node {
            label 'docker-agent-react'
        }
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
    }
}