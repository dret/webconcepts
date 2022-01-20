---
layout:        concept
permalink:     "/concepts/http-header/WWW-Authenticate"
title:         "HTTP Header Field: WWW-Authenticate"
concept-name:  HTTP Header Field
concept-value: WWW-Authenticate
description: "If a server receives a request for an access-protected object, and an acceptable Authorization header is not sent, the server responds with a \"401 Unauthorized\" status code, and a WWW-Authenticate header as per the framework defined above."
---

[The "WWW-Authenticate" header field consists of at least one challenge that indicates the authentication scheme(s) and parameters applicable to the effective request URI. It MUST be included in 401 (Unauthorized) response messages and MAY be included in other response messages to indicate that supplying credentials (or different credentials) might affect the response.](https://datatracker.ietf.org/doc/html/rfc7235#section-4.4 "Read documentation for HTTP Header Field &#34;WWW-Authenticate&#34;") (**[RFC 7235: Hypertext Transfer Protocol (HTTP/1.1): Authentication](/specs/IETF/RFC/7235 "The Hypertext Transfer Protocol (HTTP) is an application-level protocol for distributed, collaborative, hypermedia information systems. This document defines the HTTP Authentication framework.")**)

[If a server receives a request for an access-protected object, and an acceptable Authorization header is not sent, the server responds with a "401 Unauthorized" status code, and a WWW-Authenticate header as per the framework defined above.](https://datatracker.ietf.org/doc/html/rfc7616#section-3.3 "Read documentation for HTTP Header Field &#34;WWW-Authenticate&#34;") (**[RFC 7616: HTTP Digest Access Authentication](/specs/IETF/RFC/7616 "The Hypertext Transfer Protocol (HTTP) provides a simple challenge-response authentication mechanism that may be used by a server to challenge a client request and by a client to provide authentication information. This document defines the HTTP Digest Authentication scheme that can be used with the HTTP authentication mechanism.")**)

<br/>
<hr/>

<p style="float : left"><a href="./WWW-Authenticate.json" title="JSON representing this particular Web Concept value">JSON</a></p>
<p style="text-align: right">Return to list of all ( <a href="../http-header/">HTTP Header Fields</a> | <a href="../">Web Concepts</a> )</p>
