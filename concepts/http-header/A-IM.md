---
layout: page
title:  "HTTP Header Field: A-IM"
---

[**RFC 3229**: Delta encoding in HTTP](/specs/IETF/RFC/3229 "This document describes how delta encoding can be supported as a compatible extension to HTTP/1.1. Many HTTP (Hypertext Transport Protocol) requests cause the retrieval of slightly modified instances of resources for which the client already has a cache entry. Research has shown that such modifying updates are frequent, and that the modifications are typically much smaller than the actual entity. In such cases, HTTP would make more efficient use of network bandwidth if it could transfer a minimal description of the changes, rather than the entire new instance of the resource. This is called &#34;delta encoding.&#34;"): [The A-IM request-header field is similar to Accept, but restricts the instance-manipulations that are acceptable in the response. A response may be the result of applying multiple instance-manipulations. When an A-IM request-header field includes one or more delta-coding values, the request MUST contain an If-None-Match header field, listing one or more entity tags from prior responses for the request-URI.](http://tools.ietf.org/html/rfc3229#section-10.5.3)

