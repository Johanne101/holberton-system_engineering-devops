Firewall
====
![alt text](https://holbertonintranet.s3.amazonaws.com/uploads/medias/2020/9/45dffb0b1da8dc2ce47e340d7f88b05652c0f486.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOU5BHMTQX4%2F20220124%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220124T141705Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=f74c500c82069dc65509efa335e65b9c17c4a53237ad1d26f0993d9d80842241)

<p>

***What is a firewall?***

```
A hardware or software security system
```

***What are the 2 types of firewall:***

```
Network and host-based firewall
```

***What is the main function of a firewall?***

```
To filter incoming and outgoing network traffic
```

----------------

### ***How to install `ufw` firewall and set up some rules on a web (web-01)***:
<p>

**What is UFW?**

UFW, or Uncomplicated Firewall, is a front-end to iptables. Its main goal is to make managing your firewall drop-dead simple and to provide an easy-to-use interface. It’s well-supported and popular in the Linux community—even installed by default in a lot of distros. As such, it’s a great way to get started securing your server.

</p>

----------------

</p>

## More Info
<p>

As explained in the web stack debugging guide concept page, `telnet` is a very good tool to check if sockets are open with `telnet IP PORT`.
For example, if you want to check if port 22 is open on `web-02`:

</p>

```
sylvain@ubuntu$ telnet web-02.holberton.online 22
Trying 54.89.38.100...
Connected to web-02.holberton.online.
Escape character is '^]'.
SSH-2.0-OpenSSH_6.6.1p1 Ubuntu-2ubuntu2.8

Protocol mismatch.
Connection closed by foreign host.
sylvain@ubuntu$
```
<p>
We can see for this example that the connection is successful: `Connected to web-02.holberton.online`.

Now let’s try connecting to port 2222:
</p>

```
sylvain@ubuntu$ telnet web-02.holberton.online 2222
Trying 54.89.38.100...
^C
sylvain@ubuntu$
```
<p>
We can see that the connection never succeeds, so after some time I just use `ctrl+c` to kill the process.

This can be used not just for this exercise, but for any debugging situation where two pieces of software need to communicate over sockets.

Note that the school network is filtering outgoing connections (via a network-based firewall), so you might not be able to interact
with certain ports on servers outside of the school network.

To test your work on `web-01`, please perform the test from outside of the school network, like from your `web-02` server.
If you SSH into your `web-02` server, the traffic will be originating from web-02 and not from the school’s network, bypassing the firewall.

</p>

## Warning!

> **Containers on demand cannot be used for this project (Docker container limitation)**

> **Be very careful with firewall rules! For instance, if you ever deny port 22/TCP and log out of your server, you will not be able to reconnect to your server via SSH, and we will not be able to recover it. When you install UFW, port 22 is blocked by default, so you should unblock it immediately before logging out of your server.**


---------------------------------

#### Intro

<p>
Debugging usually takes a big chunk of a software engineer’s time. The art of debugging is tough and it takes years, even decades to master, and that is why seasoned software engineers are the best at it… experience. They have seen lots of broken code, buggy systems, weird edge cases and race conditions.
</p>

#### Test and verify your assumptions

<p>
The idea is to ask a set of questions until you find the issue. For example, if you installed a web server and it isn’t serving a page when browsing the IP, here are some questions you can ask yourself to start debugging:

* Is the web server started? - You can check using the service manager, also double check by checking process list.
* On what port should it listen? - Check your web server configuration
* Is it actually listening on this port? - netstat -lpdn - run as root or sudo so that you can see the process for each listening port
* It is listening on the correct server IP? - netstat is also your friend here
* Is there a firewall enabled?
* Have you looked at logs? - usually in /var/log and tail -f is your friend
* Can I connect to the HTTP port from the location I am browsing from? - curl is your friend
There is a good chance that at this point you will already have found part of the issue.
</p>

## Get a quick overview of the machine state

[Youtube video First 5 Commands When I Connect on a Linux Server](https://www.youtube.com/watch?v=1_gqlbADaAw)
<p>

When you connect to a server/machine/computer/container you want to understand what’s happened recently and what’s happening now,
and you can do this with [5 commands](https://www.linux.com/training-tutorials/first-5-commands-when-i-connect-linux-server/) in a minute or less:

</p>

`w`
* shows server uptime which is the time during which the server has been continuously running
* shows which users are connected to the server
* load average will give you a good sense of the server health - (read more about load [here](https://scoutapm.com/blog/understanding-load-averages) and [here](https://www.brendangregg.com/blog/2017-08-08/linux-load-averages.html))

`history`
* shows which commands were previously run by the user you are currently connected to
* you can learn a lot about what type of work was previously performed on the machine, and what could have gone wrong with it
* where you might want to start your debugging work

`top`
* shows what is currently running on this server
* order results by CPU, memory utilization and catch the ones that are resource intensive

`df`
* shows disk utilization

`netstat`
* what port and IP your server is listening on
* what processes are using sockets
* try netstat -lpn on a Ubuntu machine

-------------------

## Network issues

<p>
For the machine level, you want to ask yourself these questions:

* Does the server have the expected network interfaces and IPs up and running? `ifconfig`
* Does the server listen on the sockets that it is supposed to? `netstat` (`netstat -lpd` or `netstat -lpn`)
* Can you connect from the location you want to connect from, to the socket you want to connect to?
  * `telnet` to the IP + PORT (`telnet 8.8.8.8 80`)
* Does the server have the correct firewall rules? `iptables`, `ufw`:
  * `iptables -L`
  * `sudo ufw status`

</p>

## Process issue

<p>
If a piece of Software isn’t behaving as expected, it can obviously be because of above reasons… but the good news is that there is more to look into (there is ALWAYS more to look into actually).
</p>

Is the software started? `init`, `init.d`:

```
$ service NAME_OF_THE_SERVICE status
$ /etc/init.d/NAME_OF_THE_SERVICE status
```

Is the software process running? `pgrep`, `ps`:

```
$ pgrep -lf NAME_OF_THE_PROCESS
$ ps auxf
```

Is there anything interesting in the logs? look for log files in `/var/log/` and `tail -f` is your friend

**Debugging is fun**

```
Debugging can be frustrating, but it will definitely be part of your job, it requires experience and methodology to become good at it. The good news is that bugs are never going away, and the more experienced you become, trickier bugs will be assigned to you! Good luck :)
```

![alt text](https://holbertonintranet.s3.amazonaws.com/uploads/medias/2020/9/bae58c9f066a9668001ef4b4c39778407439d2f9.gif?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOU5BHMTQX4%2F20220124%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220124T141705Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=8c237575246a82b661b27bd33dd09a4db9b8c73632ba524fc79e5b1abe3774fc)


Resources
====
**Read or watch:**

* [What is a firewall](https://en.wikipedia.org/wiki/Firewall_%28computing%29)
* [How to Install UFW & Setup](https://www.digitalocean.com/community/tutorials/how-to-setup-a-firewall-with-ufw-on-an-ubuntu-and-debian-cloud-server)
* [Machine State Uptime](https://whatis.techtarget.com/definition/uptime-and-downtime)
* load average will give you a good sense of the server health: (read more about load
  * [here](https://scoutapm.com/blog/understanding-load-averages) and [here](https://www.brendangregg.com/blog/2017-08-08/linux-load-averages.html))
* [Netstat](http://netstat.net/)
* [Testind Enviroment](https://www.tecmint.com/create-ssh-tunneling-port-forwarding-in-linux/)
* [How to Install and Use UFW Firewall on Linux](https://linuxconfig.org/how-to-install-and-use-ufw-firewall-on-linux)
* [How to block or unblock ping requests on Ubuntu Server 20.04 LTS](https://linuxhint.com/block-unblock-ping-requests-to-ubuntu-server/)
* [ufw setup port forward](https://serverfault.com/questions/238563/can-i-use-ufw-to-setup-a-port-forward)
* [ufw](https://help.ubuntu.com/community/UFW)
* [How To Configure Firewall with UFW on Ubuntu 20.04 LTS](https://www.cyberciti.biz/faq/how-to-configure-firewall-with-ufw-on-ubuntu-20-04-lts/#Get_ufw_firewall_status)
* [ufw configuration port forward 80/443 to internal server](How to configure ufw to forward port 80/443 to internal server hosted on LAN)
* [How to use ufw in Ubuntu](https://www.youtube.com/watch?v=_kYAzJG_68s)
