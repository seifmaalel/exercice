pipeline{
  environment {
    registry = "seifeddinemaalel/mytest"
    registryCredential = 'dockerhub'
    dockerImage = ''
  }
  agent any
    stages { 
        stage('Building image') {
            steps{
                script {
                  dockerImage = docker.build registry + ":latest"
                }
             }
          }
          stage('Push Image') {
              steps{
                  script 
                    {
                        docker.withRegistry( '', registryCredential ) {
                            dockerImage.push()
                        }
                   } 
               }
            }
          stage('running') {
              steps{
                  script 
                    {
                        docker stop jencont
                        docker rm jencont
                        docker run  -d seifeddinemaalel/mytest
                        }
                   } 
               }
            }
    }
}
