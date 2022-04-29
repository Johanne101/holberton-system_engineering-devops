Web stack debugging #1
=======================

***Concepts***

* Network basics
* Debuging Ubuntu container’s Nginx Server

## Web stack debugging

<p>
**Intro**

Debugging usually takes a big chunk of a software engineer’s time.
The art of debugging is tough and it takes years, even decades to master,
and that is why seasoned software engineers are the best at it… experience.
They have seen lots of broken code, buggy systems, weird edge cases and race conditions.

#### Test and verify your assumptions

The idea is to ask a set of questions until you find the issue. For example, if you installed a web server and it isn’t serving a page when browsing the IP, here are some questions you can ask yourself to start debugging:

* Is the web server started? - You can check using the service manager, also double check by checking process list.
* On what port should it listen? - Check your web server configuration
* Is it actually listening on this port? - `netstat -lpdn` - run as `root` or `sudo` so that you can see the process for each listening port
* It is listening on the correct server IP? - `netstat` is also your friend here
* Is there a firewall enabled?
* Have you looked at logs? - usually in `/var/log` and `tail -f` is your friend
* Can I connect to the HTTP port from the location I am browsing from? - `curl` is your friend

There is a good chance that at this point you will already have found part of the issue.

</p>

## Debuging Ubuntu container’s Nginx Server
---
<p>
***Server Configuration***
<p>
Pre-built Linux packages:
out-of-the-box support for debugging log with the `nginx-debug` binary (1.9.8) which can be run using commands
```
service nginx stop
service nginx-debug start
```

</p>
</p>
## Network basics
---
<p>
Networking is a big part of what made computers so powerful and why the Internet exists. It allows machines to communicate with each other.
</p>
## Killing a Running Process on Linux
------

### What is a protocol
<p>
A network protocol is a set of established rules that dictate how to format, transmit and receive data so that computer network devices -- from servers and routers to endpoints -- can communicate, regardless of the differences in their underlying infrastructures, designs or standards.
</p>

### What is an IP address
<p>
Every machine on a network has a unique identifier.
Just as you would address a letter to send in the mail,
computers use the unique identifier to send data to specific computers on a network.
Most networks today, including all computers on the internet, use the TCP/IP protocol
as the standard for how to communicate on the network.

In the TCP/IP protocol, the unique identifier for a computer is called its IP address.
</p>

### What is TCP/IP?
---
<p>
TCP/IP stands for Transmission Control Protocol/Internet Protocol and is a suite of communication protocols used to interconnect network devices on the internet. TCP/IP is also used as a communications protocol in a private computer network (an intranet or extranet).

The entire IP suite -- a set of rules and procedures -- is commonly referred to as TCP/IP. TCP and IP are the two main protocols, though others are included in the suite. The TCP/IP protocol suite functions as an abstraction layer between internet applications and the routing and switching fabric.
</p>

### What is an Internet Protocol (IP) port?

> Networking ports are software-based and unrelated to physical ports
> that network devices have for plugging in cables.

<p>
A port number is always associated with an IP address of a host
and the type of transport protocol used for communication.
</p>

Resources
=========
* [Server Configuration](https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-ubuntu-20-04#step-6-%E2%80%93-getting-familiar-with-important-nginx-files-and-directories)
* [Configuring Nginx Server to port 80](https://www.digitalocean.com/community/questions/needing-help-to-get-nginx-to-listen-on-port-80)
* [KILL Running Process](https://linuxconfig.org/how-to-kill-a-running-process-on-linux)
* [LEMP STACK](https://www.digitalocean.com/community/tutorials/how-to-install-linux-nginx-mysql-php-lemp-stack-on-ubuntu-20-04)
* [What is a protocol](https://www.techtarget.com/searchnetworking/definition/protocol)
  * [Network Protocols: youtube](https://www.youtube.com/watch?v=znIjk-7ZuqI)
* [What is an IP address](https://computer.howstuffworks.com/internet/basics/what-is-an-ip-address.htm)
* [What is TCP/IP](https://web.archive.org/web/20220102145920/https://www.techtarget.com/searchnetworking/definition/TCP-IP)
*Watch*
  * [What is TCP/IP and How it Works](https://www.youtube.com/watch?v=614QGgw_FA4)
* [What is an Internet Protocol (IP) port?](https://www.lifewire.com/port-numbers-on-computer-networks-817939)
* [Port (computer networking): wiki](https://en.wikipedia.org/wiki/Port_(computer_networking)#:~:text=The%20most%20common%20transport%20protocols,transport%20protocol%20used%20for%20communication.)
  * [what is a port number](https://www.techtarget.com/searchnetworking/definition/port-number)
**Debugging**:
* [Youtube video First 5 Commands When I Connect on a Linux Server](https://www.youtube.com/watch?v=1_gqlbADaAw)
* [Linux.com: First 5 Commands When I Connect on a Linux Server](https://www.linux.com/training-tutorials/first-5-commands-when-i-connect-linux-server/)
