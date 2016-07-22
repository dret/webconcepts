---
layout: page
title:  "HTTP Cache Directive: no-store"
---

**[RFC 7234: Hypertext Transfer Protocol (HTTP/1.1): Caching](/specs/IETF/RFC/7234 "The Hypertext Transfer Protocol (HTTP) is an application-level protocol for distributed, collaborative, hypertext information systems. This document defines requirements on HTTP caches and the associated header fields that control cache behavior or indicate cacheable response messages."):** [The "no-store" directive indicates that a cache MUST NOT store any part of either this request or any response to it. This directive applies to both private and shared caches. "MUST NOT store" in this context means that the cache MUST NOT intentionally store the information in non-volatile storage, and MUST make a best-effort attempt to remove the information from volatile storage as promptly as possible after forwarding it.](http://tools.ietf.org/html/rfc7234#section-5.2.1.5)

<br/>
<hr/>

<p style="text-align: right"><a href="../http-cache-directives">Return to list of all HTTP Cache Directives</a></p>