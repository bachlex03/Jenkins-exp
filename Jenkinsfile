pipeline {
    agent any
    stages {
        stage ("Cloning the repository") {
            steps {
                echo "Cloning the repository"
                git branch: 'main', url: "https://github.com/bachlex03/Jenkins-exp.git"
            }
        }
    }
}