---
layout: page
title:  "HTTP Header Field: Signature"
---

**[Internet Draft cavage-http-signatures: Signing HTTP Messages](/specs/IETF/I-D/cavage-http-signatures "When communicating over the Internet using the HTTP protocol, it can be desirable for a server or client to authenticate the sender of a particular message. It can also be desirable to ensure that the message was not tampered with during transit. This document describes a way for servers and clients to simultaneously add authentication and message integrity to HTTP messages by using a digital signature."):** [The "signature" HTTP Header is based on the model that the sender must authenticate itself with a digital signature produced by either a private asymmetric key (e.g., RSA) or a shared symmetric key (e.g., HMAC). The scheme is parameterized enough such that it is not bound to any particular key type or signing algorithm. However, it does explicitly assume that senders can send an HTTP 'Date' header.](http://tools.ietf.org/html/draft-cavage-http-signatures#section-4 "Read documentation for HTTP Header Field &#34;Signature&#34;")

<br/>
<hr/>

<p style="text-align: right">Return to list of all ( <a href="../http-headers">HTTP Header Fields</a> | <a href="../">Web Concepts</a> )</p>