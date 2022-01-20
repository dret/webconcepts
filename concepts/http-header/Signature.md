---
layout:        concept
permalink:     "/concepts/http-header/Signature"
title:         "HTTP Header Field: Signature"
concept-name:  HTTP Header Field
concept-value: Signature
description: "The \"signature\" HTTP Header is based on the model that the sender must authenticate itself with a digital signature produced by either a private asymmetric key (e.g., RSA) or a shared symmetric key (e.g., HMAC). The scheme is parameterized enough such that it is not bound to any particular key type or signing algorithm. However, it does explicitly assume that senders can send an HTTP 'Date' header."
---

[The "signature" HTTP Header is based on the model that the sender must authenticate itself with a digital signature produced by either a private asymmetric key (e.g., RSA) or a shared symmetric key (e.g., HMAC). The scheme is parameterized enough such that it is not bound to any particular key type or signing algorithm. However, it does explicitly assume that senders can send an HTTP 'Date' header.](https://datatracker.ietf.org/doc/html/draft-cavage-http-signatures#section-4 "Read documentation for HTTP Header Field &#34;Signature&#34;") (**[Internet Draft cavage-http-signatures: Signing HTTP Messages](/specs/IETF/I-D/cavage-http-signatures "When communicating over the Internet using the HTTP protocol, it can be desirable for a server or client to authenticate the sender of a particular message. It can also be desirable to ensure that the message was not tampered with during transit. This document describes a way for servers and clients to simultaneously add authentication and message integrity to HTTP messages by using a digital signature.")**)

<br/>
<hr/>

<p style="float : left"><a href="./Signature.json" title="JSON representing this particular Web Concept value">JSON</a></p>
<p style="text-align: right">Return to list of all ( <a href="../http-header/">HTTP Header Fields</a> | <a href="../">Web Concepts</a> )</p>
