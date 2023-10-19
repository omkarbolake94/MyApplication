pipeline { 

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
     environment {
      DOCKER_IMAGE = "omkarbolake94/MyApplication:$BUILD_NUMBER"
     }
    
    steps {
     sh 'docker build -t $DOCKER_IMAGE -f Dockerfile2 . '
       }
   }
   
  }

}
