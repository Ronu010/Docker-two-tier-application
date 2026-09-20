pipeline {

    agent any

    stages {

        stage('Clone Code') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/Ronu010/Docker-two-tier-application.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t two-tier-app ./app'
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker run -d -p 5000:5000 two-tier-app'
            }
        }

    }
}