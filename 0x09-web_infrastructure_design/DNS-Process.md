Domain Name System (DNS)
========================
<p>
The Domain Name System (DNS) is the central part of the Internet and provides a means of matching between the name (the website being searched for) and the number (the website address). Any device connected to the Internet—a laptop, tablet, mobile phone, website has a digital Internet Protocol (IP) address. Your favorite website may have an IP address like 64.202.189.170, but this is obviously hard to remember.

However, domain names like “the best domain name.com” are easily recognized and remembered. DNS synchronizes domain names with IP addresses, allowing people to use domain names that are easy to remember, while computers on the Internet can use IP addresses.
</p>

![alt text](https://app.mural.co/t/0simplewebstack8962/m/0simplewebstack8962/1638919553758/0c8ee9e7649533b6f2bffb52891618db5634f450?sender=u02fbfd2dc87097a4c44b1379)

![alt text](https://app.mural.co/embed/9548f29e-68de-40ca-bed7-9f04fb297b37)

### How DNS works step-by-step

The working principle and process of DNS are divided into the following steps 1-6:

1. The client proposes a domain name resolution request and sends the request to the local domain name server.
2.  When the local domain name server receives the request, it first queries the local cache.
  * If there is this record, the local domain name server directly returns the result of the query.
3. If the local cache does not have the record, the local domain name server directly sends the request to the root domain name server,
  a. and then the root domain name server returns the primary domain name of the domain (the subdomain of the root) of the local domain name server.
    * The address of the server.
4. The local server sends a request to the domain name server returned in the previous step, and then the server that accepts the request queries its own cache. If there is no such record, it returns the address of the relevant lower-level domain name server.
5. Repeat step 4 until you find the correct record.
6. The local domain name server saves the returned results to the cache for the next use and returns the results to the client.

### DNS resolution process:
1. The client proposes a domain name resolution request and sends the request to the local domain name server.
2. When the local domain name server receives the request, it first queries the local cache. If there is this record, the local domain name server directly returns the result of the query.
3. If there is no such record in the local cache, the local domain name server will directly send the request to the root domain name server , and then the root domain name serverwill return to the local domain name server for the primary domain name server of the query domain (the subdomain of the root). address.
4. The local server sends a request to the domain name server returned in the previous step, and then the server that accepts the request queries its own cache. If there is no such record, it returns the address of the relevant lower-level domain name server.
5. Repeat step 4 until you find the correct record.
6. The local domain name server saves the returned results to the cache for the next use and returns the results to the client.



DNS PROCESS| Components | name | How it works|
|:--:|:---|:---:|------|
|**1.**| Resolver | ***DNS recursive resolver*** | The DNS recursive resolver’s goal is to find the IP address connected to the website you entered. |
|**2.**| root | ***root nameserver*** | The resolver’s first step is to find the website’s “Top Level Domain”. Keeps a list of every website in each TLD and asks it to find the right IP address. |
|**3.**| TLD | ***Top Level Domain*** | A top-level domain is one of the domains at the highest level in the hierarchical Domain Name System of the Internet after the root domain. The top-level domain names are installed in the root zone of the name space. |
|**4.**| authorative | Authorative server | will figure out if that address is correct. |

Resources
=======

***Read and/or watch:***

* [DNS Guide](https://theencarta.com/how-dns-works-step-by-step/#How_dns_works_step_by_step)
