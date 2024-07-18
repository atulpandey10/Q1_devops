pipeline {
    agent any
    stages {
        stage('Pull Source Code') {
            steps {
                git branch: 'main', credentialsId: '', url: 'https://github.com/Devendra-19/Question1Devops.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    bat 'docker build -t myapp:01 .'
                }
            }
        }
        stage('Run Tests') {
            steps {
                script {
                    bat 'docker run --name test05 myapp:01'
                }
            }
        }
        stage('Report Generation') {
            steps {
                script {
                    bat 'docker cp test05:/app/pytest.xml .'
                    bat 'dir'
                    bat 'docker rm -f test05'
                }
                junit 'pytest.xml'
            }
        }
    }
}
