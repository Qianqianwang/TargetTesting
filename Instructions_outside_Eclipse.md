1. Open a terminal, cd to the folder that you want Chronon recorder server to be installed. We refer it as <dir>.

2. Download Chronon recording server and unpack it:

  `wget http://www.chrononsystem.com/downloads/recordingserver-3.70.0.200.zip`

  `unzip recordingserver-3.70.0.200.zip -d recordingserver-3.70.0.200`

3. Download [config.sh](https://github.com/Qianqianwang/TargetTesting/blob/master/config.sh) and 
[upload.sh](https://github.com/Qianqianwang/TargetTesting/blob/master/upload.sh) and put them under <dir>.

4. Run configuration and start JetUML.

  `chmod +x *.sh`
  
  `./config.sh`
  
5. At this point, JetUML will be started automatically and you can use it for your assignment now.

6. After you are done with your assignment, run upload.sh to pack and upload your recorded data. Remember that you
will not be graded based on the recorded data.

  `./upload.sh`

