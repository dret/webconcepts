---
layout: page
title:  "HTTP Cache Directive: private"
---

**[RFC 7234: Hypertext Transfer Protocol (HTTP/1.1): Caching](/specs/IETF/RFC/7234 "The Hypertext Transfer Protocol (HTTP) is an application-level protocol for distributed, collaborative, hypertext information systems. This document defines requirements on HTTP caches and the associated header fields that control cache behavior or indicate cacheable response messages."):** [The "private" response directive indicates that the response message is intended for a single user and MUST NOT be stored by a shared cache. A private cache MAY store the response and reuse it for later requests, even if the response would normally be non-cacheable.](http://tools.ietf.org/html/rfc7234#section-5.2.2.6)

<br/>
<hr/>

<p style="text-align: right"><a href="../http-cache-directives">Return to list of all HTTP Cache Directives</a></p>