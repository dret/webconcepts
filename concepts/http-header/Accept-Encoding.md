---
layout: page
title:  "HTTP Header Field: Accept-Encoding"
---

**[RFC 7231: Hypertext Transfer Protocol (HTTP/1.1): Semantics and Content](/specs/IETF/RFC/7231 "The Hypertext Transfer Protocol (HTTP) is an application-level protocol for distributed, collaborative, hypertext information systems. This document defines the semantics of HTTP/1.1 messages as expressed by request methods, request header fields, response status codes, and response header fields, along with the payload of messages (metadata and body content) and mechanisms for content negotiation."):** [The "Accept-Encoding" header field can be used by user agents to indicate what response content-codings are acceptable in the response. An "identity" token is used as a synonym for "no encoding" in order to communicate when no encoding is preferred.](http://tools.ietf.org/html/rfc7231#section-5.3.4)

<br/>
<hr/>

<p style="text-align: right">Return to list of all ( <a href="../http-headers">HTTP Header Fields</a> | <a href="../">Web Concepts</a> )</p>**[RFC 7694: Hypertext Transfer Protocol (HTTP) Client-Initiated Content-Encoding](/specs/IETF/RFC/7694 "In HTTP, content codings allow for payload encodings such as for compression or integrity checks. In particular, the &#34;gzip&#34; content coding is widely used for payload data sent in response messages. Content codings can be used in request messages as well, however discoverability is not on par with response messages. This document extends the HTTP &#34;Accept-Encoding&#34; header field for use in responses, to indicate that content codings are supported in requests."):** [Section 5.3.4 of RFC 7231 defines "Accept-Encoding" as a request header field only. This specification expands that definition to allow "Accept-Encoding" as a response header field as well. When present in a response, it indicates what content codings the resource was willing to accept in the associated request. A field value that only contains "identity" implies that no content codings were supported.](http://tools.ietf.org/html/rfc7694#section-3)

<br/>
<hr/>

<p style="text-align: right">Return to list of all ( <a href="../http-headers">HTTP Header Fields</a> | <a href="../">Web Concepts</a> )</p>