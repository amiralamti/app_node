pipeline {
  agent {
    docker {
      // Utiliser l'image Docker que vous avez créée
      image 'node:14'
      args '-p 3005:3005'
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

