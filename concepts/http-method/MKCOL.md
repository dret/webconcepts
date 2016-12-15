---
layout:        concept
permalink:     "/concepts/http-method/MKCOL"
title:         "HTTP Request Method: MKCOL"
concept-name:  HTTP Request Method
concept-value: MKCOL
description: "MKCOL creates a new collection resource at the location specified by the Request-URI. If the Request-URI is already mapped to a resource, then the MKCOL MUST fail. During MKCOL processing, a server MUST make the Request-URI an internal member of its parent collection, unless the Request-URI is \"/\". If no such ancestor exists, the method MUST fail. When the MKCOL operation creates a new collection resource, all ancestors MUST already exist, or the method MUST fail with a 409 (Conflict) status code."
---

**[RFC 4918: HTTP Extensions for Web Distributed Authoring and Versioning (WebDAV)](/specs/IETF/RFC/4918 "Web Distributed Authoring and Versioning (WebDAV) consists of a set of methods, headers, and content-types ancillary to HTTP/1.1 for the management of resource properties, creation and management of resource collections, URL namespace manipulation, and resource locking (collision avoidance)."):** [MKCOL creates a new collection resource at the location specified by the Request-URI. If the Request-URI is already mapped to a resource, then the MKCOL MUST fail. During MKCOL processing, a server MUST make the Request-URI an internal member of its parent collection, unless the Request-URI is "/". If no such ancestor exists, the method MUST fail. When the MKCOL operation creates a new collection resource, all ancestors MUST already exist, or the method MUST fail with a 409 (Conflict) status code.](http://tools.ietf.org/html/rfc4918#section-9.3 "Read documentation for HTTP Request Method &#34;MKCOL&#34;")

<br/>
<hr/>

<p style="float : left"><a href="./MKCOL.json" title="JSON representing this particular Web Concept value">JSON</a></p>
<p style="text-align: right">Return to list of all ( <a href="../http-method/">HTTP Request Methods</a> | <a href="../">Web Concepts</a> )</p>
