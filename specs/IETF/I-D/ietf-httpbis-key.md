---
layout: page
title:  "The Key HTTP Response Header Field"
---

| Canonical Name | Internet Draft ietf-httpbis-key
| Organization | [Internet Engineering Task Force (IETF)](..)
| Series | [Internet Draft (I-D)](..)
| Abstract | The 'Key' header field for HTTP responses allows an origin server to describe the cache key for a negotiated response: a short algorithm that can be used upon later requests to determine if the same response is reusable. Key has the advantage of avoiding an additional round trip for validation whenever a new request differs slightly, but not significantly, from prior requests. Key also informs user agents of the request characteristics that might result in different content, which can be useful if the user agent is not sending Accept* fields in order to reduce the risk of fingerprinting.