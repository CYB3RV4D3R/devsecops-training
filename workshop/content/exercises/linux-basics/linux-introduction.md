The man that developed the Linux kernel was known as Linus Torvalds. He developed his own UNIX clone in 1991 which he named Linux. At first there was only three basic utilities: bash, update and gcc. It has evolved over time thanks to the operating system being available freely to anyone in the world. Now there are many distributions allowing others to create their own "flavors" of Linux such as Ubuntu, Fedora, Debian, CentOS, and many more. 

These are some of the basic linux commands every linux administrator or engineer should know. 

#### The man command
The `man` command is used to display the manual pages of a given command. For terminals that do not have man installed you can use `--help` flag to any command.

```execute
cd --help
```

#### The pwd command
The `pwd` command will display your current working directory of the user.

```execute
pwd
```

#### The cd command
cd "change directory" command is used to change the current working directory. The tilde "~" represents the home directory. You specify a path you want to change to such as `cd /some/path` or you can use the command `cd ~` to change to the current users home directory. You can also move up and down directory levels. You can type `cd ..` to go back one directory or `cd ../../` to go back two levels.

```execute
cd ~
```
```execute
cd ..
```
```execute
cd ../../
```

#### The ls command
The `ls` command lists the files and directories within a directory. You can use flags with the command such as `ls -la` to list the contents in a long listing and also show hidden files. These flags can be found within the man pages or with the help flag. 

```execute
cd ~
```
```execute
ls
```
```execute
ls -la
```

#### The cat and touch command
The `touch` command is used to create new or empty files. The `cat` command prints the contents of the file to the terminal window. 

```execute
touch sample.txt
```
```execute
ls
```
```execute
echo "Hello, Everyone!" > sample.txt
```
```execute
cat sample.txt
```
