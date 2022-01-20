# 0x09. Web infrastructure design
## Concepts:
  * [Server](https://en.wikipedia.org/wiki/Server_(computing)#Hardware_requirement)
  * [Web server](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/What_is_a_web_server)
  * DNS
    * DNS record types[]()

|Types| name | Responsability |
|:----|:----:|----------------|
[A](https://support.dnsimple.com/articles/a-record/)|**Address**|maps a domain name to the IP address of the computer hosting the domain|An A record uses a domain name to find the IP address of a computer connected to the internet|
[CNAME](https://en.wikipedia.org/wiki/CNAME_record) |**Canonical NAME record**| maps a domain name into an alias|
[MX](https://en.wikipedia.org/wiki/MX_record)|**mail exchanger record**|specifies the mail server responsible for accepting email messages on behalf of a domain name.|
[TXT](https://en.wikipedia.org/wiki/TXT_record)|**Text record**|used to provide the ability to associate arbitrary text |

## Monitoring

## Network basics

## Load balancer
<p>
Is the process of distributing a set of tasks over a set of resources (computing units),
with the aim of making their overall processing more efficient.
</p>
Two main approaches exist:

  * static algorithms, which do not take into account the state of the different machines, and
  * dynamic algorithms, which are usually more general and more efficient, but require exchanges of information between the different computing units, at the risk of a loss of efficiency.

## What is HTTPS

This protocol handels the communication betweena web server and a browser.
It sends data between the browser and the website you’re connected to.

  * What is a database

## Do not mix up web server and server.

|**Web Server**|*vs*|**Server**|
|--------------|:--:|----------|
| software that delivers web pages (or services).|*vs*| Is an actual computer.|
|**TYPES:**|*vs*||
|Apache, Internet information server

## What’s the difference between a web server and an app server?

|**Web Server**|*vs*|**App Server**|
|--------------|:--:|----------|
| Proccesses HTTP requests by responding with HTML pages |*vs*| Persists data, serves "biz" logic|
|Servers static content:|*vs*| Handles all aplication operations, between:|
|*HTML, images, ect.* |*vs*| *users, organizations back-end applications or databases.* |
|No server side programming|*vs*| Deploys applications |
|No database or dynamic generator of html|*vs*| Manages Template pages, code & data |

  * Single point of failure
  * How to avoid downtime when deploying new code
  * High availability cluster (active-active/active-passive)
  * What is a firewall

------------------
Web Infrastructure design Concepts:
------------------
<p>
Specifics about this one server web infrastructure design that hosts the website that is reachable via `www.foobar.com`

|What is...| *Description* |
|:---------|---------------|
|Server|is computer software and underlying hardware that accepts requests, provides data or services to other computers via a network.|
|The role of the domain name| A domain name is a web address consisting of a website name and a domain name extension.|

</p>

## What type of DNS record www is in www.foobar.com
<p>
* The CNAME record maps one domain name (an alias) to another (the canonical name). www 
* DSN `A` record type points to the server **IP** address `8.8.8.8` to map the domain name to the IP address
* Meaning that a request from your browser to www.foobar.com is directed to the server with IP address 8.8.8.8

|*domain name*| *IP address*| *root domain*|
|:-----------:|:-----------:|:------------:|
|www.foobar.com | 8.8.8.8| foobar.com |


but also it needs to use the CNAME record type to know that foobar.com is indeed
an alias for www.foobar.com
</p>

|**What is the role** web server|**NGINX**| Is free and open-source software, is a web server that can also be used as a reverse proxy, load balancer, mail proxy and HTTP cache. | ***Reloading Configuration*** If caching is enabled, the cache loader and cache manager processes also run at startup.|
|application server||
|database||

What is the server using to communicate with the computer of the user requesting the website : An HTTP protocol

You must be able to explain what the issues are with this infrastructure:
SPOF
Downtime when maintenance needed (like deploying new code web server needs to be restarted)
* Ngix use a text‑based configuration file written in a particular format.
* For changes to the configuration file to take effect, it must be reloaded.

*Cannot scale if too much incoming traffic*
  * High-traffic systems must watch their QPS in order to know when to scale the system to handle more load.
  * Queries per second is a common measure of the amount of search traffic an information retrieval system, such as a search engine or a database, receives during one second. The term is used more broadly for any request–response system, 
