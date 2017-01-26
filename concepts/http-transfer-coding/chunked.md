---
layout:        concept
permalink:     "/concepts/http-transfer-coding/chunked"
title:         "HTTP Transfer Coding: chunked"
concept-name:  HTTP Transfer Coding
concept-value: chunked
description: "The chunked transfer coding wraps the payload body in order to transfer it as a series of chunks, each with its own size indicator, followed by an OPTIONAL trailer containing header fields.  Chunked enables content streams of unknown size to be transferred as a sequence of length-delimited buffers, which enables the sender to retain connection persistence and the recipient to know when it has received the entire message."
---

[The chunked transfer coding wraps the payload body in order to transfer it as a series of chunks, each with its own size indicator, followed by an OPTIONAL trailer containing header fields.  Chunked enables content streams of unknown size to be transferred as a sequence of length-delimited buffers, which enables the sender to retain connection persistence and the recipient to know when it has received the entire message.](http://tools.ietf.org/html/rfc7230#section-4.1 "Read documentation for HTTP Transfer Coding &#34;chunked&#34;") (**[RFC 7230: Hypertext Transfer Protocol (HTTP/1.1): Message Syntax and Routing](/specs/IETF/RFC/7230 "The Hypertext Transfer Protocol (HTTP) is an application-level protocol for distributed, collaborative, hypertext information systems. HTTP has been in use by the World Wide Web global information initiative since 1990. This document provides an overview of HTTP architecture and its associated terminology, defines the &#34;http&#34; and &#34;https&#34; Uniform Resource Identifier (URI) schemes, defines the HTTP/1.1 message syntax and parsing requirements, and describes general security concerns for implementations.")**)

<br/>
<hr/>

<p style="float : left"><a href="./chunked.json" title="JSON representing this particular Web Concept value">JSON</a></p>
<p style="text-align: right">Return to list of all ( <a href="../http-transfer-coding/">HTTP Transfer Codings</a> | <a href="../">Web Concepts</a> )</p>
