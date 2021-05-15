pipeline {
    agent any
	
    stages{

	stage(docker){
          steps{
              sh '''docker build -t my-docker-lda  -f Dockerfile .
                    docker build -t my-docker-nn  -f Dockerfile .'''
             }
           } 
        stage(modelTraining){
 	    steps{
		       sh ' bash train-lda.sh '
		   }
		}
       stage(NeutralNetworkTraining){
         steps{
               sh ' bash train-nn.sh '
           }
        }
     }
}	
	   
