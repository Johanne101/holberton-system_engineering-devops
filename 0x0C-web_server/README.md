Web server
===

General Objectives:
---

What is the main role of a web server
<p>
  * The main role of a web server is to serve static content
  * A web server is a softare.
  * Web servers are the piece of software generating and serving HTML pages.
</p>
<p>
The main role of DNS is to translate domain into IP address.

One of the most important reason for which DNS was created is because humans are not good at rememering long sequences of numbers (IP address).
</p>
What is a child process
  * ...
Why web servers usually use child processes?
  * <p>So the web server can dynamically change the number of child process to accomodate the volume of requests to be processed.</p>

Why web servers usually have a parent process and child processes
  * ...
What are the main HTTP requests

|HTPP resquest | Purpose |
|:------------:|---------|
|HTTP GET | Requests data |
|HTTP POST | Submits data |
|... | ... |

|Record Type|Translates|
|:---------:|----------|
|A record | an IP |
|CNAME | a domain |

TTL within the context of DNS is a time period when DNS query results are cached.

Resources
==========
***Read or watch:***
* [Passing Arguments to Bash Script](https://linuxhandbook.com/bash-arguments/)
* [How the web works](https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/How_the_Web_works)
* [Nginx](https://en.wikipedia.org/wiki/Nginx)
* [How to Configure Nginx](https://www.digitalocean.com/community/tutorials/how-to-set-up-nginx-server-blocks-virtual-hosts-on-ubuntu-16-04)
* **Child process**

* [Root and sub domain](https://landingi.com/help/domains-vs-subdomains/)
* [HTTP requests](https://www.tutorialspoint.com/http/http_methods.htm)
* [HTTP redirection](https://moz.com/learn/seo/redirection)
* [Not found HTTP response code](https://en.wikipedia.org/wiki/HTTP_404)
* [Logs files on Linux](https://www.cyberciti.biz/faq/ubuntu-linux-gnome-system-log-viewer/)

***For reference:***
* [RFC 7231 (HTTP/1.1)](https://datatracker.ietf.org/doc/html/rfc7231)
* [RFC 7540 (HTTP/2)](https://datatracker.ietf.org/doc/html/rfc7540)

***man or help:***
* `scp`
* `curl`
* [`-y on apt-get command`](https://askubuntu.com/questions/672892/what-does-y-mean-in-apt-get-y-install-command)
