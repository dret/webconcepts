---
layout:        concept
permalink:     "/concepts/http-header/Urgency"
title:         "HTTP Header Field: Urgency"
concept-name:  HTTP Header Field
concept-value: Urgency
description: "An application server MAY include an Urgency header field in its request for push message delivery. This header field indicates the message urgency. The push service MUST NOT forward the Urgency header field to the user agent. A push message without the Urgency header field defaults to a value of \"normal\"."
---

[An application server MAY include an Urgency header field in its request for push message delivery. This header field indicates the message urgency. The push service MUST NOT forward the Urgency header field to the user agent. A push message without the Urgency header field defaults to a value of "normal".](https://datatracker.ietf.org/doc/html/rfc8030#section-5.3 "Read documentation for HTTP Header Field &#34;Urgency&#34;") (**[RFC 8030: Generic Event Delivery Using HTTP Push](/specs/IETF/RFC/8030 "This document describes a simple protocol for the delivery of real-time events to user agents. This scheme uses HTTP/2 server push.")**)

<br/>
<hr/>

<p style="float : left"><a href="./Urgency.json" title="JSON representing this particular Web Concept value">JSON</a></p>
<p style="text-align: right">Return to list of all ( <a href="../http-header/">HTTP Header Fields</a> | <a href="../">Web Concepts</a> )</p>
