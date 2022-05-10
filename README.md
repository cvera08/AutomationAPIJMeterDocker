# AutomationAPIJMeterDocker
Run JMeter Tests using Docker

#

### Requisites:
##### 1- Install Git locally
You can follow one of these links:
Windows, Linux, Mac: 
*https://git-scm.com/book/en/v2/Getting-Started-Installing-Git

Homebrew:
*https://www.atlassian.com/git/tutorials/install-git
\
\
##### 2- Install Docker locally (Docker desktop)
*https://docs.docker.com/desktop/
\
Or on a supported Mac, if you have brew already installed, run:
```sh
brew install --cask docker
```
Then launch the Docker app. Click next. It will ask for privileged access. Confirm. A whale icon should appear in the top bar. Click it and wait for "Docker is running" to appear. You should be able to run docker commands now

You can verify your installation with the following command:
```sh
docker --version
```
You should get something like this:
>Docker version 20.10.14, build a224086


##### 3- Install Jmeter Locally
*https://jmeter.apache.org/download_jmeter.cgi

Or On a supported Mac, if you have brew already installed, run:
```sh
brew install jmeter
jmeter -v 
jmeter
```
Source: https://octoperf.com/blog/2017/10/26/how-to-install-jmeter-mac/#launch-jmeter

#If you are unable to click JMeter Open icon, go to Options > Look and Feel > System (restart JMeter)
Source: https://stackoverflow.com/questions/67615212/why-am-i-not-able-to-click-on-open-icon-in-jmeter

##### 4- Clone this repository:

```sh
git clone https://github.com/cvera08/JMeterDocker.git
cd JMeterDocker
```

##### 5- Compile DockerFile:
```sh
./build.sh
```
#it will take a while

##### 6- Check if everything was installed successfully: (not mandatory)
```sh
./example.sh
```
#enter your local password if it is required (sudo commands)

you should get something similar to this:
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
### Run JMeter Tests in Docker: 
#all the outputs should be similar to above
```sh
./run.sh -n -t test/JMeterDocker_Toolbox.jmx
```

or 
```sh
./run.sh -n -t test/JMeterDocker_Toolbox.jmx -Jthreads=50 -Jrampup=50 -Jduration=600
```

or
```sh
./run.sh -n -t test/JMeterDocker_Toolbox.jmx -l test/JMeterDocker_Toolbox.jtl -j test/JMeterDocker_Toolbox.log -Jthreads=50 -Jrampup=50 -Jduration=600
```
#
### To see the results: 
-By command line:
![alt text](https://i.ibb.co/8rGj85J/JMeter-Docker-zsh-153-43.png)

-In a CSV file:
```sh
./run.sh -n -t test/JMeterDocker_Toolbox.jmx -l test/JMeterDocker_Toolbox.csv
```
Just open the generated test/JMeterDocker_Toolbox.csv file
![alt text](https://i.ibb.co/wLWyBBb/JMeter-Docker-Toolbox-Google-Sheets.png)
#If not, you can see it by command line as well using:
```sh
cat test/JMeterDocker_Toolbox.csv | sed -e 's/,,/, ,/g' | column -s, -t | less -#5 -N -S
```
#
#### Feel free to open JMeterDocker_Toolbox.jmx in your local JMeter and add/modify/delete any test
![alt text](https://i.ibb.co/DVx8G2S/Cursor-and-JMeter-Docker-Toolbox-jmx-JMeter-Docker-test-JMeter-Docker-Toolbox-jmx-Apache-JMeter-5-4.png)