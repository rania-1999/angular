pipeline {

    agent any

   tools {nodejs '19.1.0'
}

    stages {
         stage ('Checkout GIT'){
                steps {
                    echo 'pulling... ';
                        git branch :'rania',
                        url : 'https://github.com/rania-1999/angular.git';
                }
            }

   

   stage ('build')
         {
           steps{
                sh ' ng build '  }
     }
    }
}