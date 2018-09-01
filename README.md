# Light process CPU usage monitor

The pmonitor is a shell based script that helps user to monitor CPU usage by any particular proces running on a Linux machine.
# Summary of Features
- The CPU usage report is saved in an output file defined by default (named: monReport.txt) and displayed on the terminal
- The time of reading usage rate is adjustable
- The target process can be selected whether by its launching name or by its PID ### Installation
1) Copy pmonitor. sh on your machine
2) Run the shell script in the terminal where it was saved 
### Usage
1) Move to pmonitor.sh location directory.
2) Run the script: by typing ./pmonitor.sh followed by the desired program's name or  PID.  

```sh
$ ./pmonitor.sh firefox
12,5
12,5
25,0
...
$ ./pmonitor.sh 1237
50,0
31,2
...

```

By default, the pmonitor will save results in an output file named monReport.txt (it will be created in the same directory where ./pmonitor.sh was run).
The results are saved on this file in two columns: the first one refer to the simple rank and the second column contains the CPU usage value.
```sh
$ cat monReport.txt 
0 50,0 
1 31,2 
2 100,0 
3 18,8 
...
```
The results are equally displayed on the terminal in real time every 1s (by default the stats sampling rate are 1Hz).
The sampling rate is adjustable just by fixing a desired value after the process name/PID.
In this example, each 5s we read CPU usage of PID=1237. 


```sh
$ ./pmonitor.sh 1237 5
25,0
29,4
18,8
...
```

### To do


- Export result in .CSV file with timestamp
- Add sending a report to the remote monitoring server
- Add automatic sampling rate adjustment based on CPU usage

###License
----
MIT
