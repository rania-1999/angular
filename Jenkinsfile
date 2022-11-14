pipeline {

    agent any

   

    stages {
         stage ('Checkout GIT'){
                steps {
                    echo 'pulling... ';
                        git branch :'rania',
                        url : 'https://github.com/rania-1999/angular.git';
                }
            }

      stages {
    stage('Install') {
      steps { sh 'npm install' }
    }

    stage('Test') {
      parallel {
        stage('Static code analysis') {
            steps { sh 'npm run-script lint' }
        }
        stage('Unit tests') {
            steps { sh 'npm run-script test' }
        }
      }
    }

    stage('Build') {
      steps { sh 'npm run-script build' }
    }
         
    }
}