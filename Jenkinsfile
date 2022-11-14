pipeline {

    agent any

   tools {nodejs '16.3.0'
}

    stages {
         stage ('Checkout GIT'){
                steps {
                    echo 'pulling... ';
                        git branch :'rania',
                        url : 'https://github.com/rania-1999/angular.git';
                }
            }

   /*   stage('Install') {
      steps { sh 'npm install' }
    }
stage ('install angular cli ')
{
steps  {sh'npm i -g @angular/cli'
}
} 
    

    stage('Build') {
      steps { sh 'npm run-script build' }
    }*/
 stage('Building our image') {
steps{
sh 'docker build -t arafarania/tpachatfront:1.0.0 .'
}
}
stage('Login to Docker Hub') {      	
    steps{                       	
	   sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR -p ${DOCKERHUB_CREDENTIALS_PSW} ${DOCKERHUB_CREDENTIALS_REPOSITORY} '        
                   		
	echo 'Login Completed'      
    }           
}      
   stage('Push Image to Docker Hub') {         
     steps{                             
	sh 'docker push arafarania/tpachatfront:1.0.0'         
	        echo 'Push Image Completed'       
      }          
    } 
    }
}