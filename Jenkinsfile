pipeline {
    agent { 
        label 'agent-roch'
    }

    stages {
        stage('Build') {
            steps {
               echo "Build"
            }
        }
        stage('Test') {
            steps {
                bat "ruby run.rb"
            }
        }
    }
}
