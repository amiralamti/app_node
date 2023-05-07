pipeline {
  agent {
    docker {
      image 'node:14'
      args '-p 3005:3005'
      label 'my-docker-agent' // utilisez le label que vous avez configuré pour le nœud Docker
    }
  }
  stages {
    stage('Build') {
      steps {
        sh 'npm install'
        sh 'npm run build'
      }
    }
    stage('Test') {
      steps {
        sh 'npm test'
      }
    }
    stage('Deploy') {
      steps {
        sh 'npm run deploy'
      }
    }
  }
}

