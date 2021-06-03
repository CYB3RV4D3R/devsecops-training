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

#### The ping command

The *ping* command can be used to test connectivity between hosts. Ping works by sending an ICMP echo request from source to destination. The destination system then responds with an ICMP echo response packet. 

```copy
ping 127.0.0.1
```

#### The netstat command

The *netstat* utility can list network connections, routing table, and network interfaces. 

```copy
netstat 
    -a list all listening and nonlistening sockets
    -i display network interfaces
    -l list listening sockets
    -r display routing table
```

#### Other useful commands

- The **traceroute** utility allows you to see the hops that it takes to get from source to destination system.

- The **nc** command goes a step beyond the ping command and established a TCP or UDP connection. One example to connect to a TCP connection on port 7777 would be `nc -l 7777`.

- The **dig** and **host** commands can be used to find information on domain and hostnames. 