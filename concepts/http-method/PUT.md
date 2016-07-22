---
layout: page
title:  "HTTP Request Method: PUT"
---

[**RFC 7231**: Hypertext Transfer Protocol (HTTP/1.1): Semantics and Content](/specs/IETF/RFC/7231 "The Hypertext Transfer Protocol (HTTP) is an application-level protocol for distributed, collaborative, hypertext information systems. This document defines the semantics of HTTP/1.1 messages as expressed by request methods, request header fields, response status codes, and response header fields, along with the payload of messages (metadata and body content) and mechanisms for content negotiation."): [The PUT method requests that the state of the target resource be created or replaced with the state defined by the representation enclosed in the request message payload. A successful PUT of a given representation would suggest that a subsequent GET on that same target resource will result in an equivalent representation being sent in a 200 (OK) response. However, there is no guarantee that such a state change will be observable, since the target resource might be acted upon by other user agents in parallel, or might be subject to dynamic processing by the origin server, before any subsequent GET is received. A successful response only implies that the user agent's intent was achieved at the time of its processing by the origin server.](http://tools.ietf.org/html/rfc7231#section-4.3.4)

