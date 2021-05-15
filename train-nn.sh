#!/bin/bash
if sudo docker ps -l | grep my-docker-autoML
then 
      echo "my-docker-autoML already built"
else
      echo " my-docker-autoML not built"
fi  
sudo docker run -p 5000:5000 my-docker-nn pyhton3 train-nn.py > nn_result.txt 
res=${sudo cat nn_result.txt}
test=80
if [ $test -gt $res ]	
then 
      echo "accuracy not superior to 80%"
	  sudo cat nn_result.txt
else  
      sudo docker run -p 5000:5000 my-docker-nn pyhton3 train-auto-nn.py > auto_result.txt 
fi				  
