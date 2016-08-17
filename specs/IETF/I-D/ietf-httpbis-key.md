---
layout: page
title:  "The Key HTTP Response Header Field"
---

| *Document Name:* | Internet Draft ietf-httpbis-key
| *Document URI:* | `ietf-httpbis-key`
| *Online Version:* | [`http://tools.ietf.org/html/draft-ietf-httpbis-key`](http://tools.ietf.org/html/draft-ietf-httpbis-key)
| *Organization:* | [Internet Engineering Task Force (IETF)](..  "List of specification series by this organization")
| *Series:* | [Internet Draft (I-D)](.  "List of specifications in this series")
| *Abstract:* | The 'Key' header field for HTTP responses allows an origin server to describe the cache key for a negotiated response: a short algorithm that can be used upon later requests to determine if the same response is reusable. Key has the advantage of avoiding an additional round trip for validation whenever a new request differs slightly, but not significantly, from prior requests. Key also informs user agents of the request characteristics that might result in different content, which can be useful if the user agent is not sending Accept* fields in order to reduce the risk of fingerprinting.

<br/>
<hr/>

## Specified Web Concepts:



<br/>
<hr/>

<p style="text-align: right">Return to ( <a href="./">Series</a> | <a href="../">Organization</a> | <a href="../../">all Specifications</a> )</p>