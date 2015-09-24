1. Open a terminal, under ~/Documents, create a folder named recording
  
  `mkdir recording`

  `cd recording`

2. Download Chronon recording server and unpack it:

  `wget http://www.chrononsystems.com/downloads/recordingserver-3.70.0.200.zip`

  `unzip recordingserver-3.70.0.200.zip -d recordingserver-3.70.0.200`

3. Download [config.sh](https://github.com/Qianqianwang/TargetTesting/blob/master/config.sh) and put it under ~/Documents/recording.

4. Run configuration and start JetUML.

  `chmod +x *.sh`
  
  `./config.sh <path_to_jetUML.jar>`   Remember to use the absolute path of jetUML.jar.
  
5. At this point, JetUML will be started automatically and you can use it for your assignment now.

6. After you are done with your assignment, pack and upload your recorded data. Remember that you
will not be graded based on the recorded data.

  `UUID=$(cat /proc/sys/kernel/random/uuid)`
  
  `echo $UUID`
  
  `zip -r ${UUID}.zip ~/Documents/recording/recordingserver-3.70.0.200/controllers/linux/controller/data`
  
  `sftp cs6300@alpaca.cc.gt.atl.ga.us` (Password will be given separately)
  
  After you get sftp access, run
  
  `cd recording`
  
  `put <your_zip_file>`
  
  `exit`
  

  

