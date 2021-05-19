pipeline {
    agent any
	
    stages{

	stage(DockerImagecreation){
          steps{
              sh ''' sudo docker build -t my-docker-lda  -f Dockerfile .
                     sudo docker build -t my-docker-nn  -f Dockerfile . '''
             }
           } 
        stage(DataAnalysis){
 	    steps{
		       sh ' bash train-lda.sh '
		   }
		}
       stage(NeuralNetworkTraining){
         steps{
               sh ' bash train-nn.sh '
           }
        }
     }
}	
	   
