pipeline {
    agent any
    stages {
        stage ("Cloning the repository") {
            steps {
                echo "Cloning the repository"
                git branch: 'main', url: "https://github.com/bachlex03/Jenkins-exp.git"
            }
        }
        stage ("Build") {
            steps {
                withDockerRegistry(credentialsId: 'jenkins-dockerhub', url: 'https://index.docker.io/v1/') {
                    sh "docker --version"
                    sh "docker build -t baledev/jenkins-exp ."
                    sh "docker push baledev/jenkins-exp"
                }
            }
        }
    }
}