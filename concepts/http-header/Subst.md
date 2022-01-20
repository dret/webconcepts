---
layout:        concept
permalink:     "/concepts/http-header/Subst"
title:         "HTTP Header Field: Subst"
concept-name:  HTTP Header Field
concept-value: Subst
description: "The Subst response-header field MUST be used by a proxy to supply the URI of the original source of an entity-body, if the source is different from the client's Request-URI, and if the client's request included the \"inform\" directive in a SubOK request header field."
---

[The Subst response-header field MUST be used by a proxy to supply the URI of the original source of an entity-body, if the source is different from the client's Request-URI, and if the client's request included the "inform" directive in a SubOK request header field.](https://datatracker.ietf.org/doc/html/draft-mogul-http-dupsup#section-5.2.2 "Read documentation for HTTP Header Field &#34;Subst&#34;") (**[Internet Draft mogul-http-dupsup: Duplicate Suppression in HTTP](/specs/IETF/I-D/mogul-http-dupsup "A significant fraction of Web content is often exactly duplicated under several different URIs. This duplication can lead to suboptimal use of network bandwidth, and unnecessary latency for users. Much of this duplication can be avoided through the use of a simple mechanism, described here, which allows a cache to efficiently substitute one byte-for-byte identical value for another. By doing so, the cache avoids some or all of the network costs associated with retrieving the duplicate value.")**)

<br/>
<hr/>

<p style="float : left"><a href="./Subst.json" title="JSON representing this particular Web Concept value">JSON</a></p>
<p style="text-align: right">Return to list of all ( <a href="../http-header/">HTTP Header Fields</a> | <a href="../">Web Concepts</a> )</p>
