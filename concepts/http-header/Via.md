---
layout: page
title:  "HTTP Header Field: Via"
---

**[RFC 7230: Hypertext Transfer Protocol (HTTP/1.1): Message Syntax and Routing](/specs/IETF/RFC/7230 "The Hypertext Transfer Protocol (HTTP) is an application-level protocol for distributed, collaborative, hypertext information systems. HTTP has been in use by the World Wide Web global information initiative since 1990. This document provides an overview of HTTP architecture and its associated terminology, defines the &#34;http&#34; and &#34;https&#34; Uniform Resource Identifier (URI) schemes, defines the HTTP/1.1 message syntax and parsing requirements, and describes general security concerns for implementations."):** [The "Via" header field indicates the presence of intermediate protocols and recipients between the user agent and the server (on requests) or between the origin server and the client (on responses), similar to the "Received" header field in email (Section 3.6.7 of RFC 5322). Via can be used for tracking message forwards, avoiding request loops, and identifying the protocol capabilities of senders along the request/response chain.](http://tools.ietf.org/html/rfc7230#section-5.7.1)

<br/>
<hr/>

<p style="text-align: right">Return to list of all ( <a href="../http-headers">HTTP Header Fields</a> | <a href="../">Web Concepts</a> )</p>