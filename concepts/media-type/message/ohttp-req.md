---
layout:        concept
permalink:     "/concepts/media-type/message/ohttp-req"
title:         "Media Type: message/ohttp-req"
concept-name:  Media Type
concept-value: message/ohttp-req
description: "HTTP message encapsulation uses HPKE for request and response encryption. An Encapsulated Request is comprised of a length-prefixed key identifier and a HPKE-protected request message. HPKE protection includes an encapsulated KEM shared secret (or enc), plus the AEAD-protected request message."
---

[HTTP message encapsulation uses HPKE for request and response encryption. An Encapsulated Request is comprised of a length-prefixed key identifier and a HPKE-protected request message. HPKE protection includes an encapsulated KEM shared secret (or enc), plus the AEAD-protected request message.](https://datatracker.ietf.org/doc/html/draft-ietf-ohai-ohttp#section-7.1 "Read documentation for Media Type &#34;message/ohttp-req&#34;") (**[Internet Draft ietf-ohai-ohttp: Oblivious HTTP](/specs/IETF/I-D/ietf-ohai-ohttp "This document describes a system for the forwarding of encrypted HTTP messages. This allows a client to make multiple requests of a server without the server being able to link those requests to the client or to identify the requests as having come from the same client.")**)

<br/>
<hr/>

<p style="float : left"><a href="./message/ohttp-req.json" title="JSON representing this particular Web Concept value">JSON</a></p>
<p style="text-align: right">Return to list of all ( <a href="../media-type/">Media Types</a> | <a href="../">Web Concepts</a> )</p>
