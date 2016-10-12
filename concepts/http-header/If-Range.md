---
layout:      page
permalink:   "/concepts/http-header/If-Range"
title:       "HTTP Header Field: If-Range"
description: "If a client has a partial copy of a representation and wishes to have an up-to-date copy of the entire representation, it could use the Range header field with a conditional GET (using either or both of If-Unmodified-Since and If-Match.)  However, if the precondition fails because the representation has been modified, the client would then have to make a second request to obtain the entire current representation. The \"If-Range\" header field allows a client to \"short-circuit\" the second request. Informally, its meaning is: if the representation is unchanged, send me the part(s) that I am requesting in Range; otherwise, send me the entire representation."
---

**[RFC 7233: Hypertext Transfer Protocol (HTTP/1.1): Range Requests](/specs/IETF/RFC/7233 "The Hypertext Transfer Protocol (HTTP) is an application-level protocol for distributed, collaborative, hypertext information systems. This document defines range requests and the rules for constructing and combining responses to those requests."):** [If a client has a partial copy of a representation and wishes to have an up-to-date copy of the entire representation, it could use the Range header field with a conditional GET (using either or both of If-Unmodified-Since and If-Match.)  However, if the precondition fails because the representation has been modified, the client would then have to make a second request to obtain the entire current representation. The "If-Range" header field allows a client to "short-circuit" the second request. Informally, its meaning is: if the representation is unchanged, send me the part(s) that I am requesting in Range; otherwise, send me the entire representation.](http://tools.ietf.org/html/rfc7233#section-3.2 "Read documentation for HTTP Header Field &#34;If-Range&#34;")

<br/>
<hr/>

<p style="float : left"><a href="./If-Range.json" title="JSON representing this particular Web Concept value">JSON</a></p>
<p style="text-align: right">Return to list of all ( <a href="../http-headers">HTTP Header Fields</a> | <a href="../">Web Concepts</a> )</p>
