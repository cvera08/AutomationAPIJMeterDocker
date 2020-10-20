# JMeterDocker
Run dummy JMeter tests using Docker

#
####1- Install Git locally
follow one of these links:
* https://www.atlassian.com/git/tutorials/install-git
or
* https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
#
####2- Install Docker Locally (Docker desktop)
* https://docs.docker.com/desktop/

You can verify your installation with the following command:
> docker --version
#
####3- Clone this repository:
> git clone https://github.com/cvera08/JMeterDocker.git

> cd JMeterDocker
#
####4- Compile DockerFile:
>./build.sh

(it will take a while)
#
####5- Check if everything was installed successfully: (not mandatory)
>./example.sh

enter your local password if it is required (sudo commands)

you need to get something similar to this:
>----  STARTING JMeter Test ---- Mon Oct 19 23:56:07 UTC 2020
 JVM_ARGS=-Xmn234m -Xms936m -Xmx936m
 jmeter args=-n -t test/JMeterDocker_Toolbox.jmx -l test/JMeterDocker_Toolbox.jtl -j test/JMeterDocker_Toolbox.log -Jthreads=20 -Jrampup=20 -Jduration=240
 Oct 19, 2020 11:56:09 PM java.util.prefs.FileSystemPreferences$1 run
 INFO: Created user preferences directory.
 Creating summariser <summary>
 Created the tree successfully using test/JMeterDocker_Toolbox.jmx
 Starting standalone test @ Mon Oct 19 23:56:10 GMT 2020 (1603151770543)
 Waiting for possible Shutdown/StopTestNow/HeapDump/ThreadDump message on port 4445
 summary =      3 in 00:00:04 =    0.7/s Avg:  1282 Min:   478 Max:  2257 Err:     0 (0.00%)
 Tidying up ...    @ Mon Oct 19 23:56:15 GMT 2020 (1603151775585)
 ... end of run
 ----  ENDING JMeter Test ---- Mon Oct 19 23:56:16 UTC 2020

#
####6- Run JMeter tests in docker: (the output is similar to above)
> ./run.sh -n -t test/JMeterDocker_Toolbox.jmx

or 
> ./run.sh -n -t test/JMeterDocker_Toolbox.jmx -Jthreads=50 -Jrampup=50 -Jduration=600

or
> ./run.sh -n -t test/JMeterDocker_Toolbox.jmx -l test/JMeterDocker_Toolbox.jtl -j test/JMeterDocker_Toolbox.log -Jthreads=50 -Jrampup=50 -Jduration=600
#
#### Feel free to open JMeterDocker_Toolbox.jmx in your local JMeter and add/modify/delete any test
