## Read, Write, and Execution Permissions

Permissions is the access rights for the owner of the file, the group members, and everyone else. Rights can be assigned to read, write, and execute a file. 

**Read**: this permission allows the file contents to be viewed. The read permission on a directory allows your to list the directory contents.

**Write**: this permission allows you to modify the contents of a file. For a directory the write permission allows you to edit the directory contents.

**Execute**: this permission allows you to run the file and execute a script. For a directory the execute permission allows you to change to a different directory and make it your current working directory. 

#### The ls -l command

The *ls -l* command allows you to display the contents of a directory in long listing to view the permissions and ownership of those files. 

```execute
ls -l
```

**d** is for directory
**-** is for a regular file
**r** is for read
**w** is for write
**x** is for execute

From left to right; the first set of permissions is the owner, the second set is for groups, and the last set is for everyone else.

#### The chown command

The *chown* command allows you to change the user and group ownership of a file, directory, or symbolic link. 

`chown [OPTIONS] USER[:GROUP] FILE`

**USER** if only the user is specified, the user will become the owner of the given file while the group ownership does not change.

**USER:** when the user is followed by the colon, and the group is not given, the user will become the owner of the files.

**USER:GROUP** if both the user and the group is specified the user ownership of the files is changed to the given user and group ownership of the given group.

**:GROUP** if the user is omitted and the group is prefixed with a colon, only the group ownership of the files are changed.

For example, the following command will change the ownership of the file sample.txt to a new owner named neo:

```execute
chown neo sample.txt
```

```execute
ls -l | grep sample
```

As you can see the file is now owned by neo. The next example will display how to change the owner and group of a file.

```execute
chown neo:developer sample.txt
```

```execute
ls -l | grep sample
```