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

#### Creating a group

To create a group you will utilize the *groupadd* command. You can find the groups within '/etc/group'.

```execute
groupadd developer
```

```execute
getent group | grep developer
```

```execute
cat /etc/group
```

#### Secondary groups

You can add users to other groups by using the *usermod* command. Linux users can only have a maximum of 15 secondary groups. 

To find groups for the user neo:

```execute
groups neo
```
To add a secondary group:

```execute
usermod -a -G developer neo
```

Run the *groups neo* again to verify the new group was added to that user:

```execute
groups neo
```

