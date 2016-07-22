---
layout: page
title:  "HTTP Request Method: REBIND"
---

**[RFC 5842: Binding Extensions to Web Distributed Authoring and Versioning (WebDAV)](/specs/IETF/RFC/5842 "This specification defines bindings, and the BIND method for creating multiple bindings to the same resource. Creating a new binding to a resource causes at least one new URI to be mapped to that resource. Servers are required to ensure the integrity of any bindings that they allow to be created."):** [The REBIND method removes a binding to a resource from a collection, and adds a binding to that resource into the collection identified by the Request-URI. The request body specifies the binding to be added (segment) and the old binding to be removed (href). It is effectively an atomic form of a MOVE request, and MUST be treated the same way as MOVE for the purpose of determining access permissions.](http://tools.ietf.org/html/rfc5842#section-6)

<br/>
<hr/>

<p style="text-align: right">Return to list of all ( <a href="../http-methods">HTTP Request Methods</a> | <a href="../">Web Concepts</a> )</p>