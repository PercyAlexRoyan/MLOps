pipeline {
    agent any
	
    stages{
	 
      stage(ML-model Training){
	    steps{
		       sh ' bash train-lda.sh '
		   }
		}
      stage(Neutral-Network Training){
        steps{
               sh ' bash train-nn.sh '
           }
        }
     }
}	
	  
