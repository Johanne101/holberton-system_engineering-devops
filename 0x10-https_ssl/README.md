HTTPS SSL
===

![alt text](https://s3.amazonaws.com/intranet-projects-files/holbertonschool-sysadmin_devops/276/xCmOCgw.gif)

Resources
---
***Read or watch:***

- [What is HTTPS?](https://www.instantssl.com/http-vs-https)
- [What are the 2 main elements that SSL is providing](https://www.sslshopper.com/why-ssl-the-purpose-of-using-ssl-certificates.html)
- [HAProxy SSL termination on Ubuntu16.04](https://devops.ionos.com/tutorials/install-and-configure-haproxy-load-balancer-on-ubuntu-1604/)
- [SSL termination](https://en.wikipedia.org/wiki/TLS_termination_proxy)
- [Bash function](https://tldp.org/LDP/abs/html/complexfunct.html)
  - [Read User Input](https://www.geeksforgeeks.org/bash-script-read-user-input/)
- [Setting up SSL Certificates for HAProxy with certbot: KT's DevOps](https://notes.leetdev.net/untitled)
- [Seeting up your pem file](https://www.howtogeek.com/devops/what-is-a-pem-file-and-how-do-you-use-it/)
- [Use dig](https://phoenixnap.com/kb/dns-troubleshooting#ftoc-heading-6)

- [Cerbot instructions](https://certbot.eff.org/instructions?ws=haproxy&os=ubuntufocal)
  - [Verifying Certbot](https://unixcop.com/how-to-use-certbot-create-a-certificate-for-domain-and-submain/)
- [HAProxy: Skarlso's guide](https://skarlso.github.io/2017/02/15/how-to-https-with-hugo-letsencrypt-haproxy/)
- [Testing Your HAproxy Configuration: HAPROXY](https://www.haproxy.com/blog/testing-your-haproxy-configuration/)
- 

***man or help:***

* `awk`
* `dig`

![alt text](https://s3.amazonaws.com/intranet-projects-files/holbertonschool-sysadmin_devops/276/FlhGPEK.png)

# General Objectives
---

## HTTP VS HTTPS
<p>
Hyper Text Transfer Protocol Secure (HTTPS) is the secure version of HTTP, the protocol over which data is sent between your browser and the website that you are connected to. The 'S' at the end of HTTPS stands for 'Secure'. It means all communications between your browser and the website are encrypted. HTTPS is often used to protect highly confidential online transactions like online banking and online shopping order forms.
</p>
## What is HTTPS SSL 2 main roles
## What is the purpose encrypting traffic
## CerBot

1. ssh into the server
2. Install and ensure snap is up to date:
```bash
sudo snap install core; sudo snap refresh core
```
3. Install Certbot
<p>Run this command on the command line on the machine to install Certbot.</p>
```bash
sudo snap install --classic certbot
```

4. Prepare the Certbot command
<p>Execute the following instruction on the command line on the machine to ensure that the certbot command can be run.</p>

```bash
sudo ln -s /snap/bin/certbot /usr/bin/certbot
```

5. Choose how you'd like to run Certbot
  * Are you ok with temporarily stopping your website?
<p>
***Yes, my web server is not currently running on this machine.***
Stop your webserver, then run this command to get a certificate. Certbot will temporarily spin up a webserver on your machine.
</p>

```bash
sudo certbot certonly --standalone
```

## What SSL termination means
## Testing Your HAProxy Configuration
```bash
haproxy -f /path/to/haproxy.cfg -c
```


## Haproxy
<p>
Creating a certificate using `certbot` and configure `HAproxy` to accept encrypted traffic for your subdomain `www`

Haproxy requires a single file certificate in order to encrypt traffic to and from the website.
To do this, we need to combine `privkey.pem` and `fullchain.pem`. As of this writing,
there are a couple of solutions to automate this via a post hook on renewal.

For now, I have chosen to simply concatenate the two files together with cat like this:
</p>

```bash
DOMAIN='anney.tech' sudo -E bash -c 'cat /etc/letsencrypt/live/$DOMAIN/fullchain.pem /etc/letsencrypt/live/$DOMAIN/privkey.pem > /etc/haproxy/certs/$DOMAIN.pem'
```
It will create a combined cert under /etc/haproxy/certs/anney.tech.pem.

# Concepts:
* DNS
* Web stack debugging
