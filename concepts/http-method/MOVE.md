---
layout:        concept
permalink:     "/concepts/http-method/MOVE"
title:         "HTTP Request Method: MOVE"
concept-name:  HTTP Request Method
concept-value: MOVE
description: "The MOVE operation on a non-collection resource is the logical equivalent of a copy (COPY), followed by consistency maintenance processing, followed by a delete of the source, where all three actions are performed in a single operation. The consistency maintenance step allows the server to perform updates caused by the move, such as updating all URLs, other than the Request-URI that identifies the source resource, to point to the new destination resource."
---

[The MOVE operation on a non-collection resource is the logical equivalent of a copy (COPY), followed by consistency maintenance processing, followed by a delete of the source, where all three actions are performed in a single operation. The consistency maintenance step allows the server to perform updates caused by the move, such as updating all URLs, other than the Request-URI that identifies the source resource, to point to the new destination resource.](https://datatracker.ietf.org/doc/html/rfc4918#section-9.9 "Read documentation for HTTP Request Method &#34;MOVE&#34;") (**[RFC 4918: HTTP Extensions for Web Distributed Authoring and Versioning (WebDAV)](/specs/IETF/RFC/4918 "Web Distributed Authoring and Versioning (WebDAV) consists of a set of methods, headers, and content-types ancillary to HTTP/1.1 for the management of resource properties, creation and management of resource collections, URL namespace manipulation, and resource locking (collision avoidance).")**)

<br/>
<hr/>

<p style="float : left"><a href="./MOVE.json" title="JSON representing this particular Web Concept value">JSON</a></p>
<p style="text-align: right">Return to list of all ( <a href="../http-method/">HTTP Request Methods</a> | <a href="../">Web Concepts</a> )</p>
