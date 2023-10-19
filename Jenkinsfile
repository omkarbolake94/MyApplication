pipeline { 

 environment {
      DOCKER_IMAGE = "omkarbolake94/myapplication:$BUILD_NUMBER"
     }
 
 agent {
   dockerfile {args '--user root -v /var/run/docker.sock:/var/run/docker.sock'}
 }

  stages{
    stage ('Build Code')
    {
      steps{

        sh 'mvn clean install'
        
      }
    }

   stage ('Build Docker Image')
   {
   
    
    steps {
     sh 'docker build -t $DOCKER_IMAGE -f Dockerfile2 . '
       }
   }

   stage('Print')
   {
    steps{

     sh 'echo $DOCKER_IMAGE'
     
    }
   }
   
  }

}
