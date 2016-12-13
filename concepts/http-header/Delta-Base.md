---
layout:        concept
permalink:     "/concepts/http-header/Delta-Base"
title:         "HTTP Header Field: Delta-Base"
concept-name:  HTTP Header Field
concept-value: Delta-Base
description: "The Delta-Base entity-header field is used in a delta-encoded response to specify the entity tag of the base instance. A Delta-Base header field MUST be included in a response with an IM header that includes a delta-coding, if the request included more than one entity tag in its If-None-Match header field. Any response with an IM header that includes a delta-coding MAY include a Delta-Base header."
---

**[RFC 3229: Delta encoding in HTTP](/specs/IETF/RFC/3229 "This document describes how delta encoding can be supported as a compatible extension to HTTP/1.1. Many HTTP (Hypertext Transport Protocol) requests cause the retrieval of slightly modified instances of resources for which the client already has a cache entry. Research has shown that such modifying updates are frequent, and that the modifications are typically much smaller than the actual entity. In such cases, HTTP would make more efficient use of network bandwidth if it could transfer a minimal description of the changes, rather than the entire new instance of the resource. This is called &#34;delta encoding.&#34;"):** [The Delta-Base entity-header field is used in a delta-encoded response to specify the entity tag of the base instance. A Delta-Base header field MUST be included in a response with an IM header that includes a delta-coding, if the request included more than one entity tag in its If-None-Match header field. Any response with an IM header that includes a delta-coding MAY include a Delta-Base header.](http://tools.ietf.org/html/rfc3229#section-10.5.1 "Read documentation for HTTP Header Field &#34;Delta-Base&#34;")

<br/>
<hr/>

<p style="float : left"><a href="./Delta-Base.json" title="JSON representing this particular Web Concept value">JSON</a></p>
<p style="text-align: right">Return to list of all ( <a href="../http-headers">HTTP Header Fields</a> | <a href="../">Web Concepts</a> )</p>
