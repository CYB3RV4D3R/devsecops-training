To understand Networking you should be familiar with the OSI 7-layer model.

1. **Physical** transmits electrical signals through cables such as ethernet or fiber.

2. **Data Link** reliable transmission of data frames between two hosts connected by a physical layer. *i.e switchs*

3. **Network** enables the routing of the data. The router and some layer 3 switches operate at this level. The Internet Protocol (IP) and Internet Control Message Protocol (ICMP) operate at this level. 
 
4. **Transport** transmission of data segments between points on a network. The Transmission Control Protocol (TCP) and User Datagram Protocol (UDP) operate at this layer. 

5. **Session** is responsible for establishing and maintaining connections.

6. **Presentation** is responsible for ensuring information passing through the layers is formatted correctly for the application on the destination system.

7. **Application** high-level APIs, including resource sharing, remote file access.

## Important Well-Known Ports

You will need to be familiar with the well-known ports that are commonly used.

- Ports 20 and 21: FTP
- Port 22: SSH
- Port 23: Telnet
- Port 25: SMTP
- Port 53: DNS
- Port 80: HTTP
- Port 110: POP3
- Port 123: NTP
- Port 143: IMAP
- Port 161: SNMP
- Port 162: SNMP Traps
- Port 389: LDAP
- Port 443: HTTPS
- Port 465: SMTP with TLS
- Port 514: Syslog remote logging

## Troubleshooting Network Issues

There is a handful of useful untilities that comes with Linux to help troubleshoot and view your network. 

#### The ifconfig command

The *ifconfig* command will display your network interfaces.

```execute
ifconfig
```

#### The ping command

The *ping* command can be used to test connectivity between hosts. Ping works by sending an ICMP echo request from source to destination. The destination system then responds with an ICMP echo response packet. First install the utilities for ping by running the below command using the yum package manager. 

```execute
yum install iputils -y
```

```execute
ping 172.17.0.6
```

```execute
<ctrl-c>
```

#### The netcat command

The *nc* command  is a computer networking utility for reading from and writing to network connections using TCP or UDP. This tool is a very versatile troubleshooting tool that has a variety of uses. The example below uses nc to listen on port 7777.

```execute-1
nc -l 7777
```

#### The netstat command

The *netstat* utility can list network connections, routing table, and network interfaces. You can run this in the second terminal window while the prior nc command is running to see the established netcat connection on port 7777. We pipe the head command to see the top of the output. 

```execute-2
netstat -plant | head
```

#### Other useful commands

- The **traceroute** utility allows you to see the hops that it takes to get from source to destination system.

- The **dig** and **host** commands can be used to find information on domain and hostnames. 