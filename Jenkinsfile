pipeline {
  agent any
  stages {
    stage('Build Docker Image') {
      steps {
        script {
          def dockerImage = docker.build("node:latest", "-f Dockerfile .")
        }
      }
    }
     stage('Push to DockerHub') {
            steps {
                script {
                    docker.withRegistry('https://hub.docker.com/', 'auth_dockerhub') {
                        dockerImage.push()
                    }
                }
            }
}
}
}

