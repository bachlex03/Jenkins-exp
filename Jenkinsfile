pipeline {
    agent { label 'linux' }
    evironment {
        DOCKERHUB_CREDENTIALS = credentials('docker-hub-env')
    }
    stages {
        stage("Build") {
            steps {
                sh "docker build -t baledev/jenkins-exp ."
                sh "docker push baledev/jenkins-exp"
            }
        }
    }
}

// stages {
//     stage ("Cloning the repository") {
//         steps {
//             echo "Cloning the repository"
//             git branch: 'main', url: "https://github.com/bachlex03/Jenkins-exp.git"
//         }
//     }
// }