# How DNS Works
DNS (Domain Name System) is a system that translates hierarchical names for computer, services and other resources of the network. DNS in mainly used to resolve the DNS name of a computer to its IP address.

Types of DNS queries:
* Recursive Query: A DNS client provides a hostname, and the DNS Resolver “must” provide an answer—it responds with either a relevant resource record, or an error message if it can't be found. The resolver starts a recursive query process, starting from the DNS Root Server, until it finds the Authoritative Name Server that holds the IP address and other information for the requested hostname.

* Iterative Query: A DNS client provides a hostname, and the DNS Resolver returns the best answer it can. If the DNS resolver has the relevant DNS records in its cache, it returns them. If not, it refers the DNS client to the Root Server, or another Authoritative Name Server which is nearest to the required DNS zone. The DNS client must then repeat the query directly against the DNS server it was referred to.

* Non-Recursive Query: A query in which the DNS Resolver already knows the answer. It either immediately returns a DNS record because it already stores it in local cache, or queries a DNS Name Server which is authoritative for the record, meaning it definitely holds the correct IP for that hostname. In both cases, there is no need for additional rounds of queries (like in recursive or iterative queries). Rather, a response is immediately returned to the client.

Types of DNS servers:
* DNS Resolver: A DNS resolver (recursive resolver), is designed to receive DNS queries, which include a human-readable hostname and is responsible for tracking the IP address for that hostname.

* DNS Root Server: The root server is the first step in the journey from hostname to IP address. The DNS Root Server extracts the Top Level Domain (TLD) from the user’s query. There are 13 root servers worldwide, indicated by the letters A through M, operated by different organizations and are delegated authority by ICANN (Internet Corporation for Assigned Names and Numbers).

* TLD nameserver: The top level domain server (TLD) is the next step in the search for a specific IP address, and it hosts the last portion of a hostname (In example.com, the TLD server is “com”). It gives the proper authoritative server back.

* Authoritative DNS Server: Higher level servers in the DNS hierarchy define which DNS server is the “authoritative” name server for a specific hostname, meaning that it holds the up-to-date information for that hostname. The Authoritative Name Server is the last stop in the name server query—it takes the hostname and returns the correct IP address to the DNS Resolver (or if it cannot find the domain, returns the message NXDOMAIN).

![KDC](../../00%20Extra/screens/dns.png)

Common DNS records types:
* A - The record that holds the IP address of a domain. Learn more about the A record.
* CNAME - Forwards one domain or subdomain to another domain, does NOT provide an IP address. Learn more about the CNAME record.
* MX - Directs mail to an email server. Learn more about the MX record.
* TXT - Lets an admin store text notes in the record. Learn more about the TXT record.
* NS - Stores the name server for a DNS entry. Learn more about the NS record.
* SOA - Stores admin information about a domain. Learn more about the SOA record.
* SRV - Specifies a port for specific services. Learn more about the SRV record.
* PTR - Provides a domain name in reverse-lookups. Learn more about the PTR record.