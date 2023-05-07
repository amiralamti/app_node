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
    stage('Push Docker Image to Docker Hub') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'auth_dockerhub', usernameVariable: 'DOCKERHUB_USERNAME',     passwordVariable: 'DOCKERHUB_PASSWORD')]) {
                    sh "docker login -u $DOCKERHUB_USERNAME -p $DOCKERHUB_PASSWORD"
                    sh "docker push amiralamti/node:amira"
                }
            }
  }
}
}

