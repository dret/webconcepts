---
layout:      page
title:       "HTTP Cache Directive: only-if-cached"
description: "The \"only-if-cached\" request directive indicates that the client only wishes to obtain a stored response. If it receives this directive, a cache SHOULD either respond using a stored response that is consistent with the other constraints of the request, or respond with a 504 (Gateway Timeout) status code. If a group of caches is being operated as a unified system with good internal connectivity, a member cache MAY forward such a request within that group of caches."
---

**[RFC 7234: Hypertext Transfer Protocol (HTTP/1.1): Caching](/specs/IETF/RFC/7234 "The Hypertext Transfer Protocol (HTTP) is an application-level protocol for distributed, collaborative, hypertext information systems. This document defines requirements on HTTP caches and the associated header fields that control cache behavior or indicate cacheable response messages."):** [The "only-if-cached" request directive indicates that the client only wishes to obtain a stored response. If it receives this directive, a cache SHOULD either respond using a stored response that is consistent with the other constraints of the request, or respond with a 504 (Gateway Timeout) status code. If a group of caches is being operated as a unified system with good internal connectivity, a member cache MAY forward such a request within that group of caches.](http://tools.ietf.org/html/rfc7234#section-5.2.1.7 "Read documentation for HTTP Cache Directive &#34;only-if-cached&#34;")

<br/>
<hr/>

<p style="float : left"><a href="only-if-cached.json" title="JSON representing this particular Web Concept">JSON</a></p>
<p style="text-align: right">Return to list of all ( <a href="../http-cache-directives">HTTP Cache Directives</a> | <a href="../">Web Concepts</a> )</p>
