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

#### Creating a user

To create a user you will utilize the *useradd* command. Lets create a user with the name of neo.

```execute
useradd neo
```

You can find a user's primary group information with the *id* command.

```execute
id neo
```

Additionally, when available you can use the *passwd* command to set a password to a user. For example: *passwd neo*
