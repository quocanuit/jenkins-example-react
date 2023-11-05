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
    }
}