pipeline {
    agent { 
        label 'agent-roch'
    }

    stages {
        stage('Compile') {
            steps {
                bat "javac DuplicateCharacters.java"
            }
        }
        stage('Test') {
            steps {
                bat "javac DuplicateCharacters"
            }
        }
    }
}
