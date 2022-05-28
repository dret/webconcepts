---
layout:        concept
permalink:     "/concepts/http-header/Client-Cert-Chain"
title:         "HTTP Header Field: Client-Cert-Chain"
concept-name:  HTTP Header Field
concept-value: Client-Cert-Chain
description: "In the context of a TLS terminating reverse proxy deployment, the proxy MAY make the certificate chain used for validation of the end-entity certificate available to the backend application with the Client-Cert-Chain HTTP header field. This field contains certificates used by the proxy to validate the certificate used by the client in the TLS handshake. These certificates might or might not have been provided by the client during the TLS handshake."
---

[In the context of a TLS terminating reverse proxy deployment, the proxy MAY make the certificate chain used for validation of the end-entity certificate available to the backend application with the Client-Cert-Chain HTTP header field. This field contains certificates used by the proxy to validate the certificate used by the client in the TLS handshake. These certificates might or might not have been provided by the client during the TLS handshake.](https://datatracker.ietf.org/doc/html/draft-ietf-httpbis-client-cert-field#section-2.3 "Read documentation for HTTP Header Field &#34;Client-Cert-Chain&#34;") (**[Internet Draft ietf-httpbis-client-cert-field: Client-Cert HTTP Header Field](/specs/IETF/I-D/ietf-httpbis-client-cert-field "This document defines HTTP extension header fields that allow a TLS terminating reverse proxy to convey the client certificate information of a mutually-authenticated TLS connection to the origin server in a common and predictable manner.")**)

<br/>
<hr/>

<p style="float : left"><a href="./Client-Cert-Chain.json" title="JSON representing this particular Web Concept value">JSON</a></p>
<p style="text-align: right">Return to list of all ( <a href="../http-header/">HTTP Header Fields</a> | <a href="../">Web Concepts</a> )</p>
