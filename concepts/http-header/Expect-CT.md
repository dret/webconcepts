---
layout:        concept
permalink:     "/concepts/http-header/Expect-CT"
title:         "HTTP Header Field: Expect-CT"
concept-name:  HTTP Header Field
concept-value: Expect-CT
description: "The \"Expect-CT\" header field is a new response header defined in this specification. It is used by a server to indicate that UAs should evaluate connections to the host emitting the header for CT compliance."
---

[The "Expect-CT" header field is a new response header defined in this specification. It is used by a server to indicate that UAs should evaluate connections to the host emitting the header for CT compliance.](https://datatracker.ietf.org/doc/html/draft-ietf-httpbis-expect-ct#section-2.1 "Read documentation for HTTP Header Field &#34;Expect-CT&#34;") (**[Internet Draft ietf-httpbis-expect-ct: Expect-CT Extension for HTTP](/specs/IETF/I-D/ietf-httpbis-expect-ct "This document defines a new HTTP header, named Expect-CT, that allows web host operators to instruct user agents to expect valid Signed Certificate Timestamps (SCTs) to be served on connections to these hosts. When configured in enforcement mode, user agents (UAs) will remember that hosts expect SCTs and will refuse connections that do not conform to the UA's Certificate Transparency policy. When configured in report-only mode, UAs will report the lack of valid SCTs to a URI configured by the host, but will allow the connection. By turning on Expect-CT, web host operators can discover misconfigurations in their Certificate Transparency deployments and ensure that misissued certificates accepted by UAs are discoverable in Certificate Transparency logs.")**)

<br/>
<hr/>

<p style="float : left"><a href="./Expect-CT.json" title="JSON representing this particular Web Concept value">JSON</a></p>
<p style="text-align: right">Return to list of all ( <a href="../http-header/">HTTP Header Fields</a> | <a href="../">Web Concepts</a> )</p>
