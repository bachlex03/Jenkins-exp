pipeline {
    agent any
    stages {
        stage ("Cloning the repository") {
            steps {
                echo "Cloning the repository"
                git branch: 'main', url: "https://github.com/bachlex03/Jenkins-exp.git"
            }
        }
        stage ("Packaging and pushing the Image") {
            steps {
                withDockerRegistry(credentialsId: 'jenkins-dockerhub', url: 'https://index.docker.io/v1/') {
                    sh "docker --version"
                    sh "docker build -t baledev/jenkins-exp ."
                    sh "docker push baledev/jenkins-exp"
                }
            }
        }
        stage ("Deploy to DEV environment") {
            steps {
                echo "Deploying to DEV environment"
                sh "docker network create dev || echo 'Network already exists'"
                sh "docker container stop jenkins-exp-dockerhub || echo 'No container running'"
                sh "echo y | docker container prune"
                
                sh "docker image pull baledev/jenkins-exp"
                sh "docker container run -d --name jenkins-exp-dockerhub -p 8081:8080 baledev/jenkins-exp"
            }
        }
    }
    post {
        // Clean after build
        always {
            cleanWs()
        }
    }
}

//