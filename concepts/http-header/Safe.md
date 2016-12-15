---
layout:        concept
permalink:     "/concepts/http-header/Safe"
title:         "HTTP Header Field: Safe"
concept-name:  HTTP Header Field
concept-value: Safe
description: "The Safe response header field is used by origin servers to indicate whether repeating the received HTTP request is safe in the sense of Section 9.1.1 (Safe Methods) of the HTTP/1.1 specification. For the purpose of this specification, a HTTP request is considered to be a repetition of a previous request if both requests are issued by the same user agent, and apply to the same resource, and have the same request method, and both have no request body, or both have request bodies which are byte-wise identical after decoding of any content and transfer codings."
---

**[RFC 2310: The Safe Response Header Field](/specs/IETF/RFC/2310 "This document defines a HTTP response header field called Safe, which can be used to indicate that repeating a HTTP request is safe. Such an indication will allow user agents to handle retries of some safe requests, in particular safe POST requests, in a more user-friendly way."):** [The Safe response header field is used by origin servers to indicate whether repeating the received HTTP request is safe in the sense of Section 9.1.1 (Safe Methods) of the HTTP/1.1 specification. For the purpose of this specification, a HTTP request is considered to be a repetition of a previous request if both requests are issued by the same user agent, and apply to the same resource, and have the same request method, and both have no request body, or both have request bodies which are byte-wise identical after decoding of any content and transfer codings.](http://tools.ietf.org/html/rfc2310#section-4 "Read documentation for HTTP Header Field &#34;Safe&#34;")

<br/>
<hr/>

<p style="float : left"><a href="./Safe.json" title="JSON representing this particular Web Concept value">JSON</a></p>
<p style="text-align: right">Return to list of all ( <a href="../http-header/">HTTP Header Fields</a> | <a href="../">Web Concepts</a> )</p>
