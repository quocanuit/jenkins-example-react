pipeline {
    agent {
        node {
            label 'docker-agent-react'
            args '-p 3000:3000'
        }
    }
    triggers {
        pollSCM '*/5 * * * *'
    }
    stages {
        stage('Build') { 
            steps {
                sh 'npm install' 
            }
        }
    }
}