1. Launch Eclipse

2. Install Chronon Eclipse Debugger: https://chronon.atlassian.net/wiki/display/DOC/Installation

3. Install license file: https://chronon.atlassian.net/wiki/display/DOC/License+Installation

  Note that we just need the 30 Day Evaluation License File.
  
4. Get JetUML source code from https://github.com/prmr/JetUML and import it to your Eclipse.

5. Right click ca.mcgill.cs.stg.jetuml.UMLEditor.java and select "Record As -> Java Application".

6. JetUML GUI will start and you can start doing your assignment.

7. After you are done with the assignment, export your recording data (https://chronon.atlassian.net/wiki/display/DOC/Export+Recordings).

8. Rename the generated tar file:
  
  `UUID=$(cat /proc/sys/kernel/random/uuid)`
  `mv <your_recording>.tar ${UUID}.tar
  
9. Upload your recording:

  `sftp cs6300@alpaca.cc.gt.atl.ga.us` (Password will be given separately)

  After you get sftp access, run

  `cd recording`

  `put <your_zip_file>`

  `exit`
