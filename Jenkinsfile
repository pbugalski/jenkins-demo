pipeline {
    agent any

    stages {
        stage('Build') {
            parallel {
                stage('Build') {
                    steps {
                        echo 'Building..'
                        sh 'make'
                        archiveArtifacts artifacts: 'hello', fingerprint: true
                    }
                }
                stage('Sim') {
                    steps {
                        echo 'Run simulation...'
                    }
                }
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                sh './hello > hello.log'
                archiveArtifacts artifacts: 'hello.log'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
