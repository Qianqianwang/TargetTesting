Before doing the assignment, please make sure Java is installed on the VM. If not, please use the following command to install it.

`sudo apt-get install openjdk-7-jdk`

1. Open a terminal, create a folder named recording under ~/Documents.
  
  ```
  cd ~/Documents

  mkdir recording

  cd recording
  ```

2. Download Chronon recording server and unpack it:

  ```
  wget http://www.chrononsystems.com/downloads/recordingserver-3.70.0.200.zip

  unzip recordingserver-3.70.0.200.zip -d recordingserver-3.70.0.200
  ```
  
  Download JetUML.
  
  ```
  wget http://cs.mcgill.ca/~martin/jetuml/jetuml-0.7.jar
  ```

3. Download config.sh and make sure it is under ~/Documents/recording.

  ```
  wget https://github.com/Qianqianwang/TargetTesting/blob/master/config.sh
  ```

4. Run configuration and start JetUML.

  ```
  chmod +x config.sh
  
  ./config.sh <path_to_jetUML.jar>
  ```
  Remember to use the absolute path of jetUML.jar.
  
5. JetUML will start running.  You will see the JetUML GUI.  You may proceed to doing your assignment.  Return to step 6 once
your assignment is completed.

6. After you are done with your assignment, pack and upload your recorded data. You will not be graded based on the recorded data.

  ```
  UUID=$(cat /proc/sys/kernel/random/uuid)
  
  echo $UUID
  ```
  
  You will see a randomly-generated identifer, for example e2a75c67-9104-40a6-95b9-08dad180b097.
  
  ```
  zip -r ${UUID}.zip ~/Documents/recording/recordingserver-3.70.0.200/controllers/linux/controller/data
  
  sftp cs6300@alpaca.cc.gt.atl.ga.us
  ```
  
  You might see the following message: 
  
  ```
  The authenticity of host 'alpaca.cc.gt.atl.ga.us (143.215.128.105)' can't be established. ECDSA key fingerprint is ... Are you sure you want to continue connecting (yes/no)?
  ```

  Please enter "yes". Then you will be asked to provide the password, which is given in the requirement of the assignment.
  
  After you enter the password, you will get sftp access to the server. Enter the following commands:
  
  ```
  sftp> cd recording
  
  sftp> put e2a75c67-9104-40a6-95b9-08dad180b097.zip
  ```
  where you need to replace e2a75c67-9104-40a6-95b9-08dad180b097 with the identifier generated earlier.
  
  If you see a message like 
  
  ```
  Uploading e2a75c67-9104-40a6-95b9-08dad180b097.zip to /recording/e2a75c67-9104-40a6-95b9-08dad180b097.zip
e2a75c67-9104-40a6-95b9-08dad180b097 100%  207KB 207.4KB/s   00:00
```

  it means your data is successfully uploaded and you can logout with:
  
  ```
  exit
  ```
  
  If you have problems uploading your data, please contact Qianqian Wang at wangqianqian.tina@gmail.com.
  

