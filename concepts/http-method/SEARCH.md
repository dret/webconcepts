---
layout:        concept
permalink:     "/concepts/http-method/SEARCH"
title:         "HTTP Request Method: SEARCH"
concept-name:  HTTP Request Method
concept-value: SEARCH
description: "The client invokes the SEARCH method to initiate a server-side search. The body of the request defines the query. The server MUST emit an entity matching the WebDAV multistatus format."
---

[The SEARCH method is used to initiate a server-side search. Unlike the HTTP GET method, which requests that a server return a representation of the resource identified by the target URI, the SEARCH method is used to ask the server to perform a query operation (described by the request payload) over some set of data scoped to the effective request URI. The payload returned in response to a SEARCH cannot be assumed to be a representation of the resource identified by the effective request URI.](http://tools.ietf.org/html/draft-ietf-httpbis-safe-method-w-body#section-2 "Read documentation for HTTP Request Method &#34;SEARCH&#34;") (**[Internet Draft ietf-httpbis-safe-method-w-body: HTTP SEARCH Method](/specs/IETF/I-D/ietf-httpbis-safe-method-w-body "This specification updates the definition and semantics of the HTTP SEARCH request method originally defined by RFC 5323.")**)

[The client invokes the SEARCH method to initiate a server-side search. The body of the request defines the query. The server MUST emit an entity matching the WebDAV multistatus format.](http://tools.ietf.org/html/rfc5323#section-2 "Read documentation for HTTP Request Method &#34;SEARCH&#34;") (**[RFC 5323: Web Distributed Authoring and Versioning (WebDAV) SEARCH](/specs/IETF/RFC/5323 "This document specifies a set of methods, headers, and properties composing Web Distributed Authoring and Versioning (WebDAV) SEARCH, an application of the HTTP/1.1 protocol to efficiently search for DAV resources based upon a set of client-supplied criteria.")**)

<br/>
<hr/>

<p style="float : left"><a href="./SEARCH.json" title="JSON representing this particular Web Concept value">JSON</a></p>
<p style="text-align: right">Return to list of all ( <a href="../http-method/">HTTP Request Methods</a> | <a href="../">Web Concepts</a> )</p>
