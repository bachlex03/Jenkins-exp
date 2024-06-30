pipeline {
    agent any
    environment {
        JENKINS_CRUMB = credentials('b92cada6f6faaacd77db0c7308c6877ae2a13cf00301fa9235524d3e8734fde6')
    }
    stages {
        stage ("Cloning the repository") {
            steps {
                echo "Cloning the repository"
                git branch: 'main', url: "https://github.com/bachlex03/Jenkins-exp.git"
            }
        }
    }
}