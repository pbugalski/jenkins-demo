pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
		sh 'make'
		archiveArtifacts artifacts: 'hello', fingerprint: true
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
