---
layout: page
title:  "HTTP Cache Directive: no-cache"
---

[**RFC 7234**: Hypertext Transfer Protocol (HTTP/1.1): Caching](/specs/IETF/RFC/7234 "The Hypertext Transfer Protocol (HTTP) is an application-level protocol for distributed, collaborative, hypertext information systems. This document defines requirements on HTTP caches and the associated header fields that control cache behavior or indicate cacheable response messages."): [The "no-cache" request directive indicates that a cache MUST NOT use a stored response to satisfy the request without successful validation on the origin server. The "no-cache" response directive indicates that the response MUST NOT be used to satisfy a subsequent request without successful validation on the origin server. This allows an origin server to prevent a cache from using it to satisfy a request without contacting it, even by caches that have been configured to send stale responses.](http://tools.ietf.org/html/rfc7234#section-5.2.1.4)

