---
layout:        concept
permalink:     "/concepts/http-header/Hobareg"
title:         "HTTP Header Field: Hobareg"
concept-name:  HTTP Header Field
concept-value: Hobareg
description: "The server MUST add a header field to the response message when the registration has succeeded in order to indicate the new state. The header to be used is \"Hobareg\", and the value when registration has succeeded is to be \"regok\". When registration is in an intermediate state (e.g., on an HTTP response for an interstitial page), the server MAY add this header with a value of \"reginwork\"."
---

[The server MUST add a header field to the response message when the registration has succeeded in order to indicate the new state. The header to be used is "Hobareg", and the value when registration has succeeded is to be "regok". When registration is in an intermediate state (e.g., on an HTTP response for an interstitial page), the server MAY add this header with a value of "reginwork".](https://datatracker.ietf.org/doc/html/rfc7486#section-6.1.1 "Read documentation for HTTP Header Field &#34;Hobareg&#34;") (**[RFC 7486: HTTP Origin-Bound Authentication (HOBA)](/specs/IETF/RFC/7486 "HTTP Origin-Bound Authentication (HOBA) is a digital-signature-based design for an HTTP authentication method. The design can also be used in JavaScript-based authentication embedded in HTML. HOBA is an alternative to HTTP authentication schemes that require passwords and therefore avoids all problems related to passwords, such as leakage of server-side password databases.")**)

<br/>
<hr/>

<p style="float : left"><a href="./Hobareg.json" title="JSON representing this particular Web Concept value">JSON</a></p>
<p style="text-align: right">Return to list of all ( <a href="../http-header/">HTTP Header Fields</a> | <a href="../">Web Concepts</a> )</p>
