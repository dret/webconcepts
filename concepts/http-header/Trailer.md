---
layout:        concept
permalink:     "/concepts/http-header/Trailer"
title:         "HTTP Header Field: Trailer"
concept-name:  HTTP Header Field
concept-value: Trailer
description: "When a message includes a message body encoded with the chunked transfer coding and the sender desires to send metadata in the form of trailer fields at the end of the message, the sender SHOULD generate a Trailer header field before the message body to indicate which fields will be present in the trailers."
---

[When a message includes a message body encoded with the chunked transfer coding and the sender desires to send metadata in the form of trailer fields at the end of the message, the sender SHOULD generate a Trailer header field before the message body to indicate which fields will be present in the trailers.](http://tools.ietf.org/html/rfc7230#section-4.4 "Read documentation for HTTP Header Field &#34;Trailer&#34;") (**[RFC 7230: Hypertext Transfer Protocol (HTTP/1.1): Message Syntax and Routing](/specs/IETF/RFC/7230 "The Hypertext Transfer Protocol (HTTP) is an application-level protocol for distributed, collaborative, hypertext information systems. HTTP has been in use by the World Wide Web global information initiative since 1990. This document provides an overview of HTTP architecture and its associated terminology, defines the &#34;http&#34; and &#34;https&#34; Uniform Resource Identifier (URI) schemes, defines the HTTP/1.1 message syntax and parsing requirements, and describes general security concerns for implementations.")**)

<br/>
<hr/>

<p style="float : left"><a href="./Trailer.json" title="JSON representing this particular Web Concept value">JSON</a></p>
<p style="text-align: right">Return to list of all ( <a href="../http-header/">HTTP Header Fields</a> | <a href="../">Web Concepts</a> )</p>
