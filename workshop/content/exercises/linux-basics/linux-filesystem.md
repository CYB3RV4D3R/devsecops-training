The Linux file system uses a hierarchical structure to store and organize data. It is best to remember that linux files and directories are case sensitive! The top most directory is the / or *root* directory. The root directory houses many subdirectories beneath it such as bin, dev, etc, lib, home, etc. 

## Important Directories

- **/bin** directory contains executable files neccessary to manage the linux system, file system utilities, and shells.

- **/dev** directory contains special files that represents the hardware devices installed on the system *i.e sda, sdb, etc.*

- **/etc** directory contains configuration files (text-based) used by the system. You can utilize a text editor such as vim or nano to manipulate these configuration files. 

- **/media** directory is used to mount external devices such as optical drives or USB drives. 

- **/home** directory is the base directory of the user and their subdirectories.

- **/lib** directory contains code libraries used by programs. The kernel modules are also stored within this directory under the subdirectory modules.  

- **/opt** directory contains files of optional programs you install on the system.

- **/proc** directory is a pseudo-file system that is dynamically created which is used to access process and other system information from the kernel. 

- **/root** is the roots user's home directory.

- **/sbin** directory houses system management files such as fdisk, ifconfig, init, halt, and shutdown. 

- **/tmp** directory contains temporary files that are created. 

- **/var** directory contains variable data such as system logs.

- **/usr** directory contains application files.

## Finding Files

Some commands to find files within the Linux file system are `locate`, `type`, `find`, `which`, and `whereis`. Run the following commands and take the time to go inside the terminal and run these commands on any files that you wish to locate. 

#### Find command

This example will find the sample.txt from the previous lession. 

```execute
find /home/ -name sample.txt
```
#### Which command

This command will display the the aliases of that shell command or utility and the path of the shell command.

```execute
which ls
```
#### Whereis command

This command will display the full path where that command or utility is located. The *-b* flag returns the location of the binaries.

```execute
whereis -b ls
```

#### Locate command

You will need to install the findutils-locate package on your system. The database will update daily or if you need to update automatically from a recent change in the system you can run the *updatedb* command. 

## Creating and removing directories

#### The mkdir command

This command will make a new empty directory.

```execute
mkdir sample
```

Use the *echo* command to output text into a text file.

```execute
echo "this is sample text" > foo.txt
```

#### The cp command

The *cp* command is used to copy files or directories.

```execute
cp foo.txt ~/sample/
```

```execute
ls sample/
```

#### The rm command

The *rm* command allows you to remove files or directories. To remove a file the syntax is just `rm <file>` but for directories that are not empty such as the prior example of adding the file foo.txt within the sample directory we will need to use the *-rf* flags to remove a directory that is not empty.

```execute
rm -rf sample
```
