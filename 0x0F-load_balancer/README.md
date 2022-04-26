Load balancer
===

## Concepts:

Load balancer
Web stack debugging
Redundancy
Installing a Load Balancer

## Resources
Read or watch:

* [Introduction to load-balancing and HAproxy](https://www.digitalocean.com/community/tutorials/an-introduction-to-haproxy-and-load-balancing-concepts)
* [HTTP header](https://www.techopedia.com/definition/27178/http-header)
* [Debian/Ubuntu HAProxy packages](https://haproxy.debian.net/)

## Requirements
```
Allowed editors: vi, vim, emacs
All your files will be interpreted on Ubuntu 16.04 LTS
All your files should end with a new line
A `README.md` file, at the root of the folder of the project, is meant for guidance and reference
All your Bash script files must be executable
Your Bash script must pass `Shellcheck` (version `0.3.7`) without any error
The first line of all your Bash scripts should be exactly `#!/usr/bin/env bash`
The second line of all Bash scripts should be a comment explaining what is the script doing
```

Webserver [redundancy](https://en.wikipedia.org/wiki/Redundancy_%28engineering%29)
- Tracking which web server is answering our HTTP requests, to understand and track the way a load balancer works.
- Configure Nginx so that its HTTP response contains a custom header
- Install and configure HAproxy on your lb-01 server.
