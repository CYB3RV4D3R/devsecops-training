A *process* is a program that has been loaded from long-term storage device, typically a hard disk drive, then into the system RAM and is being processed by the CPU. 

Some processes are created by the end user when they execute a command from the shell prompt or a graphical interface. These processes are called *user processes*. The processes ran by the linux system is called *system processes*. 

#### The ps command

With the *ps* command you will be able to view the processes that are currently running.

```execute
ps -a
```

As you can see you will probably have the bash and ps processes running on the system. To get more process information of additional processes such as ones ran by root you would run the following command.

```execute
ps -elf
```

The **Process ID (PID) number** is the value in the far left column. This is a number assigned to each process that can uniquely identify it on the system. 

#### The kill command

You can terminate processes with the *kill* command. There are several kill signals to be aware of. 

**SIGHUP** is kill signal 1 that restarts the process.

**SIGINT** is the kill signal 2 that send a CTRL-C key sequence to the process.

**SIGKILL** is the kill signal 9 that brute-forces the signal to kill the process.

**SIGTERM** is the kill signal 15 that tells the process to terminate immediately. This is the default signal if none is specified. 

In these examples you will run the vim command to open a new file in terminal 2. Then in terminal one you will see the new process. Lastly, you will take down the **PID** and kill the process.

```execute-2
vim sample2.txt
```

```execute-1
ps -a
```

**NOTE** the *PID* of *vim* then copy the command below *kill* and add the PID of vim as the argument such as `kill 16455` as an example. 

```copy
kill 
```

#### The top command

The *top* command is very useful. You run it by simply typing **top**. This utility displays  some of the running processes with several columns.

**PID** is the process ID

**USER** name of the user

**PR** is the priority assigned 

**NI** is the nice value

**VIRT** is the amount of virtual memory

**RES** is the amount of physical RAM

**SHR** is the amount of shared memory

**S** is the status of the process 

**%CPU** is the percentage of the CPU time

**%MEM** is the percentage of available RAM 

**TIME+** is the total amount of CPU time

**COMMAND** is the name of the command 

Execute the *top* command:

```execute
top
```

To quit you simply type *q*:

```execute
q
```
