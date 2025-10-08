pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        git url: 'https://github.com/shubhamgunjal198/health-care-project.git'
      }
    }
    stage('Build') {
      steps {
        sh 'mvn clean package'
      }
    }
    stage('Docker Build & Push') {
      steps {
        sh '''
          docker build -t shubhamgunjal1619/healthcare:latest .
          docker login -u shubhamgunjal1619 -p <your_dockerhub_password>
          docker push shubhamgunjal1619/healthcare:latest
        '''
      }
    }
    stage('Deploy to K8s') {
      steps {
        sh 'ansible-playbook ansible/deploy.yml'
      }
    }
  }
}
