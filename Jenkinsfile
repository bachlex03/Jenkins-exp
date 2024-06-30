pineline {
    agent any
    stages {
        stage ("Cloning the repository") {
            steps {
                step {
                    echo "Cloning the repository"
                }
                step {
                    git branch: 'main',
                    url: "https://github.com/bachlex03/Jenkins-exp.git"
                }
            }
        }
    }
}