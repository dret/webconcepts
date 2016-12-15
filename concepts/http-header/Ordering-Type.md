---
layout:        concept
permalink:     "/concepts/http-header/Ordering-Type"
title:         "HTTP Header Field: Ordering-Type"
concept-name:  HTTP Header Field
concept-value: Ordering-Type
description: "When a collection is created, the client MAY request that it be ordered and specify the semantics of the ordering by using the new Ordering-Type header with a MKCOL request. For collections that are ordered, the client SHOULD identify the semantics of the ordering with a URI in the Ordering-Type header, although the client MAY simply set the header value to DAV:custom to indicate that the collection is ordered but the semantics of the ordering are not being advertised."
---

**[RFC 3648: Web Distributed Authoring and Versioning (WebDAV) Ordered Collections Protocol](/specs/IETF/RFC/3648 "This specification extends the Web Distributed Authoring and Versioning (WebDAV) Protocol to support the server-side ordering of collection members. Of particular interest are orderings that are not based on property values, and so cannot be achieved using a search protocol's ordering option and cannot be maintained automatically by the server. Protocol elements are defined to let clients specify the position in the ordering of each collection member, as well as the semantics governing the ordering."):** [When a collection is created, the client MAY request that it be ordered and specify the semantics of the ordering by using the new Ordering-Type header with a MKCOL request. For collections that are ordered, the client SHOULD identify the semantics of the ordering with a URI in the Ordering-Type header, although the client MAY simply set the header value to DAV:custom to indicate that the collection is ordered but the semantics of the ordering are not being advertised.](http://tools.ietf.org/html/rfc3648#section-5.1 "Read documentation for HTTP Header Field &#34;Ordering-Type&#34;")

<br/>
<hr/>

<p style="float : left"><a href="./Ordering-Type.json" title="JSON representing this particular Web Concept value">JSON</a></p>
<p style="text-align: right">Return to list of all ( <a href="../http-header/">HTTP Header Fields</a> | <a href="../">Web Concepts</a> )</p>
