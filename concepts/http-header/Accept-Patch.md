---
layout: page
title:  "HTTP Header Field: Accept-Patch"
---

[**RFC 5789**: PATCH Method for HTTP](/specs/IETF/RFC/5789 "Several applications extending the Hypertext Transfer Protocol (HTTP) require a feature to do partial resource modification. The existing HTTP PUT method only allows a complete replacement of a document. This proposal adds a new HTTP method, PATCH, to modify an existing HTTP resource."): [This specification introduces a new response header Accept-Patch used to specify the patch document formats accepted by the server. Accept-Patch SHOULD appear in the OPTIONS response for any resource that supports the use of the PATCH method. The presence of the Accept-Patch header in response to any method is an implicit indication that PATCH is allowed on the resource identified by the Request-URI.](http://tools.ietf.org/html/rfc5789#section-3.1)

