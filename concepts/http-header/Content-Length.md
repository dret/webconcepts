---
layout:        concept
permalink:     "/concepts/http-header/Content-Length"
title:         "HTTP Header Field: Content-Length"
concept-name:  HTTP Header Field
concept-value: Content-Length
description: "When a message does not have a Transfer-Encoding header field, a Content-Length header field can provide the anticipated size, as a decimal number of octets, for a potential payload body. For messages that do include a payload body, the Content-Length field-value provides the framing information necessary for determining where the body (and message) ends. For messages that do not include a payload body, the Content-Length indicates the size of the selected representation (Section 3 of [Part2])."
---

[When a message does not have a Transfer-Encoding header field, a Content-Length header field can provide the anticipated size, as a decimal number of octets, for a potential payload body. For messages that do include a payload body, the Content-Length field-value provides the framing information necessary for determining where the body (and message) ends. For messages that do not include a payload body, the Content-Length indicates the size of the selected representation (Section 3 of [Part2]).](https://datatracker.ietf.org/doc/html/rfc7230#section-3.3.2 "Read documentation for HTTP Header Field &#34;Content-Length&#34;") (**[RFC 7230: Hypertext Transfer Protocol (HTTP/1.1): Message Syntax and Routing](/specs/IETF/RFC/7230 "The Hypertext Transfer Protocol (HTTP) is an application-level protocol for distributed, collaborative, hypertext information systems. HTTP has been in use by the World Wide Web global information initiative since 1990. This document provides an overview of HTTP architecture and its associated terminology, defines the &#34;http&#34; and &#34;https&#34; Uniform Resource Identifier (URI) schemes, defines the HTTP/1.1 message syntax and parsing requirements, and describes general security concerns for implementations.")**)

<br/>
<hr/>

<p style="float : left"><a href="./Content-Length.json" title="JSON representing this particular Web Concept value">JSON</a></p>
<p style="text-align: right">Return to list of all ( <a href="../http-header/">HTTP Header Fields</a> | <a href="../">Web Concepts</a> )</p>
