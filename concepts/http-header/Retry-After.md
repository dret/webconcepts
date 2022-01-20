---
layout:        concept
permalink:     "/concepts/http-header/Retry-After"
title:         "HTTP Header Field: Retry-After"
concept-name:  HTTP Header Field
concept-value: Retry-After
description: "Servers send the \"Retry-After\" header field to indicate how long the user agent ought to wait before making a follow-up request. When sent with a 503 (Service Unavailable) response, Retry-After indicates how long the service is expected to be unavailable to the client. When sent with any 3xx (Redirection) response, Retry-After indicates the minimum time that the user agent is asked to wait before issuing the redirected request."
---

[Servers send the "Retry-After" header field to indicate how long the user agent ought to wait before making a follow-up request. When sent with a 503 (Service Unavailable) response, Retry-After indicates how long the service is expected to be unavailable to the client. When sent with any 3xx (Redirection) response, Retry-After indicates the minimum time that the user agent is asked to wait before issuing the redirected request.](https://datatracker.ietf.org/doc/html/rfc7231#section-7.1.3 "Read documentation for HTTP Header Field &#34;Retry-After&#34;") (**[RFC 7231: Hypertext Transfer Protocol (HTTP/1.1): Semantics and Content](/specs/IETF/RFC/7231 "The Hypertext Transfer Protocol (HTTP) is an application-level protocol for distributed, collaborative, hypertext information systems. This document defines the semantics of HTTP/1.1 messages as expressed by request methods, request header fields, response status codes, and response header fields, along with the payload of messages (metadata and body content) and mechanisms for content negotiation.")**)

<br/>
<hr/>

<p style="float : left"><a href="./Retry-After.json" title="JSON representing this particular Web Concept value">JSON</a></p>
<p style="text-align: right">Return to list of all ( <a href="../http-header/">HTTP Header Fields</a> | <a href="../">Web Concepts</a> )</p>
