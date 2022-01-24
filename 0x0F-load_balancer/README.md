Load balancer
=============

Load-balancer:
<p>
Ever wonder how Facebook, Linkedin, Twitter and other web giants are handling such huge amounts of traffic? They don’t have just one server, but tens of thousands of them. In order to achieve this, web traffic needs to be distributed to these servers, and that is the role of a load-balancer.
</p>

![alt text](https://holbertonintranet.s3.amazonaws.com/uploads/medias/2020/9/6cefdd14b2f8c36789cba132bd5a10d42d88a177.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOU5BHMTQX4%2F20220124%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220124T181337Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=13f00f39c5e2602cfd3edda10a4dd2949a5328ee4c31f97cd2cb8f5554c0ae45)

**Load-balancing**
**Load-balancing Algorithms**
**Redundancy**
**Configuring Nginx(server) so that its HTTP response contains a custom header (on web-01 and web-02)**
**Configuring a brand new Ubuntu machine**
**Tracking which web server is answering our HTTP requests**
**Understanding and tracking the way a load balancer works**
**Installing a Load-Balancer**
**Bash script that configures a new Ubuntu machine to respect above requirements**


Get a quick overview of the machine state
-----------------------------------------
**The 5 commands**:
* `W`
* `history`
* `top`
* `df`
* `netstat`

### Requirements:

* Allowed editors: ``vi, vim, emacs``
* All your files will be interpreted on Ubuntu 16.04 LTS
* All your files should end with a new line
* A `README.md` file, at the root of the folder of the project
* All your Bash script files must be executable
* Your Bash script must pass `Shellcheck` (version `0.3.7`) without any error
* The first line of all your Bash scripts should be exactly ``#!/usr/bin/env bash``
* The second line of all your Bash scripts should be a comment explaining what is the script doing

Resources
==========
***Read or watch:***

* [Introduction to load-balancing and HAproxy](https://www.digitalocean.com/community/tutorials/an-introduction-to-haproxy-and-load-balancing-concepts)
* [How does Software and Hardware Load Balancer Work?](https://www.thegeekstuff.com/2016/01/load-balancer-intro/)
* [load-balancing Algorithms](https://devcentral.f5.com/s/articles/intro-to-load-balancing-for-developers-ndash-the-algorithms)
* [Redundancy](https://en.wikipedia.org/wiki/Redundancy_%28engineering%29)
* [HTTP header](https://www.techopedia.com/definition/27178/http-header)
* [HTTP Headers](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers)
* [Debian/Ubuntu HAProxy packages](https://haproxy.debian.net/)
* [top 5 commands connecting on a linux server](https://www.linux.com/training-tutorials/first-5-commands-when-i-connect-linux-server/)
  * [watch: first 5 commands when I connect on a Linux Server](https://www.youtube.com/watch?v=1_gqlbADaAw)
* [Assigning a static hostname to an Amazon EC2 instance running Ubuntu Linux](https://aws.amazon.com/premiumsupport/knowledge-center/linux-static-hostname/)
* [Change the hostname of your Amazon Linux instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/set-hostname.html)

