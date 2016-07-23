---
layout: page
title:  "Signing HTTP Messages"
---

| Canonical Name | Internet Draft cavage-http-signatures
| Online Version | [`http://tools.ietf.org/html/draft-cavage-http-signatures`](http://tools.ietf.org/html/draft-cavage-http-signatures)
| Organization | [Internet Engineering Task Force (IETF)](..  "List of specification series by this organization")
| Series | [Internet Draft (I-D)](.  "List of specifications in this series")
| Abstract | When communicating over the Internet using the HTTP protocol, it can be desirable for a server or client to authenticate the sender of a particular message. It can also be desirable to ensure that the message was not tampered with during transit. This document describes a way for servers and clients to simultaneously add authentication and message integrity to HTTP messages by using a digital signature.

<br/>
<hr/>

### HTTP Header Fields

[`Signature`](/concepts/http-header/Signature "The &#34;signature&#34; HTTP Header is based on the model that the sender must authenticate itself with a digital signature produced by either a private asymmetric key (e.g., RSA) or a shared symmetric key (e.g., HMAC). The scheme is parameterized enough such that it is not bound to any particular key type or signing algorithm. However, it does explicitly assume that senders can send an HTTP 'Date' header.")



<br/>
<hr/>

<p style="text-align: right">Return to ( <a href="./">Series</a> | <a href="../">Organization</a> | <a href="../../">all Specifications</a> )</p>