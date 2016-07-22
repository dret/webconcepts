---
layout: page
title:  "HTTP Request Method: PATCH"
---

[**RFC 5789**: PATCH Method for HTTP](/specs/IETF/RFC/5789 "Several applications extending the Hypertext Transfer Protocol (HTTP) require a feature to do partial resource modification. The existing HTTP PUT method only allows a complete replacement of a document. This proposal adds a new HTTP method, PATCH, to modify an existing HTTP resource."): [The PATCH method requests that a set of changes described in the request entity be applied to the resource identified by the Request-URI. The set of changes is represented in a format called a "patch document" identified by a media type. If the Request-URI does not point to an existing resource, the server MAY create a new resource, depending on the patch document type (whether it can logically modify a null resource) and permissions, etc.](http://tools.ietf.org/html/rfc5789#section-2)

