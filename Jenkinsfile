pipeline { 

    environment { 

        registry = "seifeddinemaalel/mytest" 

        registryCredential = 'dockerhub' 

        dockerImage = '' 

    }

    agent any 

    stages { 

      stage('Building our image') { 

            steps { 

                script { 

                    dockerImage = docker.build registry + ":lastest" 

                }

            } 

        }

        stage('Push image') { 

            steps { 
                script { 
                  
                    docker.withRegistry( '', registryCredential ) { 

                        dockerImage.push() 

                    }

                } 

            }
        } 

  
    }

}


