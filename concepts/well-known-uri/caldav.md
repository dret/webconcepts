---
layout:      page
permalink:   "/concepts/well-known-uri/caldav"
title:       "Well-Known URI: caldav"
description: "\"caldav\" and \"carddav\" \".well-known\" URIs point to a resource that the client can use as the initial \"context path\" for the service they are trying to connect to. The server MUST redirect HTTP requests for that resource to the actual \"context path\" using one of the available mechanisms provided by HTTP (e.g., using a 301, 303, or 307 response). Clients MUST handle HTTP redirects on the \".well-known\" URI. Servers MUST NOT locate the actual CalDAV or CardDAV service endpoint at the \".well-known\" URI."
---

**[RFC 6764: Locating Services for Calendaring Extensions to WebDAV (CalDAV) and vCard Extensions to WebDAV (CardDAV)](/specs/IETF/RFC/6764 "This specification describes how DNS SRV records, DNS TXT records, and well-known URIs can be used together or separately to locate CalDAV (Calendaring Extensions to Web Distributed Authoring and Versioning (WebDAV)) or CardDAV (vCard Extensions to WebDAV) services."):** ["caldav" and "carddav" ".well-known" URIs point to a resource that the client can use as the initial "context path" for the service they are trying to connect to. The server MUST redirect HTTP requests for that resource to the actual "context path" using one of the available mechanisms provided by HTTP (e.g., using a 301, 303, or 307 response). Clients MUST handle HTTP redirects on the ".well-known" URI. Servers MUST NOT locate the actual CalDAV or CardDAV service endpoint at the ".well-known" URI.](http://tools.ietf.org/html/rfc6764#section-5 "Read documentation for Well-Known URI &#34;caldav&#34;")

<br/>
<hr/>

<p style="float : left"><a href="./caldav.json" title="JSON representing this particular Web Concept value">JSON</a></p>
<p style="text-align: right">Return to list of all ( <a href="../well-known-uris">Well-Known URIs</a> | <a href="../">Web Concepts</a> )</p>
