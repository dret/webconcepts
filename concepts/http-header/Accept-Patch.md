---
layout:        concept
permalink:     "/concepts/http-header/Accept-Patch"
title:         "HTTP Header Field: Accept-Patch"
concept-name:  HTTP Header Field
concept-value: Accept-Patch
description: "This specification introduces a new response header Accept-Patch used to specify the patch document formats accepted by the server. Accept-Patch SHOULD appear in the OPTIONS response for any resource that supports the use of the PATCH method. The presence of the Accept-Patch header in response to any method is an implicit indication that PATCH is allowed on the resource identified by the Request-URI."
---

[This specification introduces a new response header Accept-Patch used to specify the patch document formats accepted by the server. Accept-Patch SHOULD appear in the OPTIONS response for any resource that supports the use of the PATCH method. The presence of the Accept-Patch header in response to any method is an implicit indication that PATCH is allowed on the resource identified by the Request-URI.](https://datatracker.ietf.org/doc/html/rfc5789#section-3.1 "Read documentation for HTTP Header Field &#34;Accept-Patch&#34;") (**[RFC 5789: PATCH Method for HTTP](/specs/IETF/RFC/5789 "Several applications extending the Hypertext Transfer Protocol (HTTP) require a feature to do partial resource modification. The existing HTTP PUT method only allows a complete replacement of a document. This proposal adds a new HTTP method, PATCH, to modify an existing HTTP resource.")**)

<br/>
<hr/>

<p style="float : left"><a href="./Accept-Patch.json" title="JSON representing this particular Web Concept value">JSON</a></p>
<p style="text-align: right">Return to list of all ( <a href="../http-header/">HTTP Header Fields</a> | <a href="../">Web Concepts</a> )</p>
