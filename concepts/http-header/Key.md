---
layout:        concept
permalink:     "/concepts/http-header/Key"
title:         "HTTP Header Field: Key"
concept-name:  HTTP Header Field
concept-value: Key
description: "The \"Key\" response header field describes the request attributes that the server has used to select the current representation. As such, its semantics are similar to the \"Vary\" response header field, but it allows more fine-grained description, using \"key modifiers\"."
---

[The "Key" response header field describes the request attributes that the server has used to select the current representation. As such, its semantics are similar to the "Vary" response header field, but it allows more fine-grained description, using "key modifiers".](https://datatracker.ietf.org/doc/html/draft-ietf-httpbis-key#section-2 "Read documentation for HTTP Header Field &#34;Key&#34;") (**[Internet Draft ietf-httpbis-key: The Key HTTP Response Header Field](/specs/IETF/I-D/ietf-httpbis-key "The 'Key' header field for HTTP responses allows an origin server to describe the cache key for a negotiated response: a short algorithm that can be used upon later requests to determine if the same response is reusable. Key has the advantage of avoiding an additional round trip for validation whenever a new request differs slightly, but not significantly, from prior requests. Key also informs user agents of the request characteristics that might result in different content, which can be useful if the user agent is not sending Accept* fields in order to reduce the risk of fingerprinting.")**)

<br/>
<hr/>

<p style="float : left"><a href="./Key.json" title="JSON representing this particular Web Concept value">JSON</a></p>
<p style="text-align: right">Return to list of all ( <a href="../http-header/">HTTP Header Fields</a> | <a href="../">Web Concepts</a> )</p>
