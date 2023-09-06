pipeline {
    agent any
    stages {
        stage('Update Dockerfile and pom.xml') {
            steps {
                sh "/usr/bin/sed -i.bak 's/{{VERSION}}/$VERSION/g' Dockerfile pom.xml"
            }
        }
        stage('Compile with maven') {
            steps {
                sh "./mvnw clean compile"
            }
        }
        stage('Execute tests with maven') {
            steps {
                sh "./mvnw test"
            }
        }
        stage('Package with maven') {
            steps {
                sh "./mvnw clean package"
            }
        }
        stage('Build docker image') {
            steps {
                sh "/usr/local/bin/docker build -t hometest:$VERSION ."
            }
        }
    }
}