1. Download Chronon Recording Server (30 day evaluation)
http://chrononsystems.com/products/chronon-recording-server/download
2. Unzip the zip file
3. Controller configuration and installation:
Edit recordingserver-<version>/controllers/linux/controller/bin/config.properties
  1. Change the name from “test machine” to a random one. Please do not include any identifiable information such as your name or GT username
  2. Change the server address to 143.215.128.105
4. Go to recordingserver-<version>/controllers/linux/controller/bin/ in a terminal and run:

  `chmod a+x *.sh`

  `sudo ./installDaemon.sh`
  
  `sudo ./startDaemon.sh`
  
5. Under recordingserver-<version>/recorder, replace the content of chrononcfg.txt with the following information:

	`servermode = true`

	`# Replace the name here with a unique name for your app`
	
	`name = JetUML`

	`autostartwithconfig=JetUML_cfg`

6. On your terminal, run:

 `java -javaagent:<path_to_recorder.jar> -agentpath:<path_to_native_agentlib> -noverify -jar <path_to_JetUML.jar>`

  where `<path_to_recorder.jar>` is under recordingserver-<version>/recorder/, and 
	`<path_to_native_agentlib>` should be recordingserver-<version>/recorder/librecorderagent64-3.0.7.so
	
  At this point, you should be able to start the JetUML GUI. Note: Don’t start using it yet!

7. Go to http://alpaca.cc.gt.atl.ga.us:8077/ and click the machine with the name you gave in 3.i and you will be able to see an application named JetUML.

8. Click on JetUML and “Create a Recording Configuration”

9. Use “JetUML_cfg” as the configuration name.

10. Under Include Patterns, type ca.mcgill.cs.stg.jetuml.** and click “Add”.

11. Click “Save”.

12. Now you can start your assignment using the JetUML GUI that is already started in step 6.

Enjoy and good luck with your assignment!
