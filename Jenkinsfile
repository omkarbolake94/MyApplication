pipeline { 

 agent {
   dockerfile {args, '--user root -v /var/run/docker.sock:/var/run/docker.sock'}
 }

  stages{
    stage ('Build Code')
    {
      steps{

        sh 'mvn clean install'
        
      }
    }
  }

}
