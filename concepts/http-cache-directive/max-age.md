---
layout: page
title:  "HTTP Cache Directive: max-age"
---

[**RFC 7234**: Hypertext Transfer Protocol (HTTP/1.1): Caching](/specs/IETF/RFC/7234 "The Hypertext Transfer Protocol (HTTP) is an application-level protocol for distributed, collaborative, hypertext information systems. This document defines requirements on HTTP caches and the associated header fields that control cache behavior or indicate cacheable response messages."): [The "max-age" request directive indicates that the client is unwilling to accept a response whose age is greater than the specified number of seconds. Unless the max-stale request directive is also present, the client is not willing to accept a stale response. The "max-age" response directive indicates that the response is to be considered stale after its age is greater than the specified number of seconds.](http://tools.ietf.org/html/rfc7234#section-5.2.1.1)

