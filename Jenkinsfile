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

   stage('Push Image')
   {
    steps{

     withCredentials([string(credentialsId: 'dockerhub', variable: 'dockerhub')]) {
    // some block
      sh 'docker login -u omkarbolake94 -p ${dockerhub}'
      sh 'docker push ${DOCKER_IMAGE}'
     sh 'echo $DOCKER_IMAGE'
     }
    }
   }
   
  }

}
