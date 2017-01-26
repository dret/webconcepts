---
layout:        concept
permalink:     "/concepts/http-header/URI"
title:         "HTTP Header Field: URI"
concept-name:  HTTP Header Field
concept-value: URI
description: "The URI header field has, in past versions of this specification, been used as a combination of the existing Location, Content-Location, and Vary header fields as well as the future Alternates field. Its primary purpose has been to include a list of additional URIs for the resource, including names and mirror locations. However, it has become clear that the combination of many different functions within this single field has been a barrier to consistently and correctly implementing any of those functions. Furthermore, we believe that the identification of names and mirror locations would be better performed via the Link header field. The URI header field is therefore deprecated in favor of those other fields."
---

[The URI header field has, in past versions of this specification, been used as a combination of the existing Location, Content-Location, and Vary header fields as well as the future Alternates field. Its primary purpose has been to include a list of additional URIs for the resource, including names and mirror locations. However, it has become clear that the combination of many different functions within this single field has been a barrier to consistently and correctly implementing any of those functions. Furthermore, we believe that the identification of names and mirror locations would be better performed via the Link header field. The URI header field is therefore deprecated in favor of those other fields.](http://tools.ietf.org/html/rfc2068#section-19.6.2.5 "Read documentation for HTTP Header Field &#34;URI&#34;") (**[RFC 2068: Hypertext Transfer Protocol - HTTP/1.1](/specs/IETF/RFC/2068 "The Hypertext Transfer Protocol (HTTP) is an application-level protocol for distributed, collaborative, hypermedia information systems. It is a generic, stateless, object-oriented protocol which can be used for many tasks, such as name servers and distributed object management systems, through extension of its request methods. A feature of HTTP is the typing and negotiation of data representation, allowing systems to be built independently of the data being transferred. HTTP has been in use by the World-Wide Web global information initiative since 1990. This specification defines the protocol referred to as &#34;HTTP/1.1&#34;.")**)

<br/>
<hr/>

<p style="float : left"><a href="./URI.json" title="JSON representing this particular Web Concept value">JSON</a></p>
<p style="text-align: right">Return to list of all ( <a href="../http-header/">HTTP Header Fields</a> | <a href="../">Web Concepts</a> )</p>
