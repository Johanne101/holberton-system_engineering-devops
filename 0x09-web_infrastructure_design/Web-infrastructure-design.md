## Server: has 12 components

|*Components*| everything what a computer has|
|:-----------|
|**Case**|
|**OP** (Operating System)| A server's OS is designed to provide a series of services to end users who access the server over the network. |
|**Network Conecction**|
|**Applications**|
|Screen|
|RAM|
|Keyboard|
|Mouse|
|Motherboard|
|Hard Drive|
|CPU|
|Video Card|


## Web Server:

|Web server| is hardware & software, working together that uses HTTP and other protocols to respond client requests|
|:---------|---------------|
|On the hardware side| a web server is a computer that stores web server software and a website's component files.|
|On the software side| a web server includes several parts that control how web users access hosted files.|
|*Implicit Use*/process| The web server process is anything that can **respond** to an HTTP **request** and **return** a file to it.|
|*It's main job*| is to display website content through storing, processing and delivering webpages to users. |


1. FRONT-END hits BACK-END
At the most basic level;
```
whenever a browser needs a file that is hosted on a web server,
the browser requests the file via HTTP.
```

2. BACK-END hits DB (and... it does some logic)


3. RETURN *request*, to FRONT-END to RENDER

```
When the request reaches the correct (hardware) web server,
the (software) HTTP server accepts the request,
finds the requested document,
and sends it back to the browser, also through HTTP.

(If the server doesn't find the requested document, it returns a 404 response instead.)
```



## Codebase
## Database "DB"
## DNS


|Record Types|name| Responsability |
|:-----------|:---:|
|[A](https://support.dnsimple.com/articles/a-record/)|**Address**|maps a domain name to the IP address of the computer hosting the domain|An A record uses a domain name to find the IP address of a computer connected to the internet|
|[CNAME](https://en.wikipedia.org/wiki/CNAME_record) **Canonical NAME record**| maps a domain name into an alias|
|[MX](https://en.wikipedia.org/wiki/MX_record)|**mail exchanger record**|specifies the mail server responsible for accepting email messages on behalf of a domain name.|
|[TXT](https://en.wikipedia.org/wiki/TXT_record)|**Text record**|used to provide the ability to associate arbitrary text |


## HTTPS
## TCP/IP

|**TCP**|***TCP/IP***|**IP**|
|-------|------------|------|
|***Transmission Control Protocol***|***Internet Protocol Suite***| ***Internet Protocol***|
|TCP provides apps a way to deliver (and receive) an ordered and error-checked stream of information packets over the network.| Is the set of communications protocols used in the Internet and similar computer networks. | Is the global system of interconnected computer networks. |

----------------


