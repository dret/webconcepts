---
layout: page
title:  "HTTP Header Field: Key"
---

**[Internet Draft ietf-httpbis-key: The Key HTTP Response Header Field](/specs/IETF/I-D/ietf-httpbis-key "The 'Key' header field for HTTP responses allows an origin server to describe the cache key for a negotiated response: a short algorithm that can be used upon later requests to determine if the same response is reusable. Key has the advantage of avoiding an additional round trip for validation whenever a new request differs slightly, but not significantly, from prior requests. Key also informs user agents of the request characteristics that might result in different content, which can be useful if the user agent is not sending Accept* fields in order to reduce the risk of fingerprinting."):** [The "Key" response header field describes the request attributes that the server has used to select the current representation. As such, its semantics are similar to the "Vary" response header field, but it allows more fine-grained description, using "key modifiers".](http://tools.ietf.org/html/draft-ietf-httpbis-key#section-2)

