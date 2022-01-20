---
layout:        concept
permalink:     "/concepts/http-header/Public-Key-Pins"
title:         "HTTP Header Field: Public-Key-Pins"
concept-name:  HTTP Header Field
concept-value: Public-Key-Pins
description: "Whenever a UA receives a Valid Pinning Header, it MUST set its Pinning Metadata to the exact Pins, Effective Expiration Date (computed from max-age), and (if any) report-uri given in the most recently received Valid Pinning Header."
---

[Whenever a UA receives a Valid Pinning Header, it MUST set its Pinning Metadata to the exact Pins, Effective Expiration Date (computed from max-age), and (if any) report-uri given in the most recently received Valid Pinning Header.](https://datatracker.ietf.org/doc/html/rfc7469#section-2.5 "Read documentation for HTTP Header Field &#34;Public-Key-Pins&#34;") (**[RFC 7469: Public Key Pinning Extension for HTTP](/specs/IETF/RFC/7469 "This document defines a new HTTP header that allows web host operators to instruct user agents to remember (&#34;pin&#34;) the hosts' cryptographic identities over a period of time. During that time, user agents (UAs) will require that the host presents a certificate chain including at least one Subject Public Key Info structure whose fingerprint matches one of the pinned fingerprints for that host. By effectively reducing the number of trusted authorities who can authenticate the domain during the lifetime of the pin, pinning may reduce the incidence of man-in-the-middle attacks due to compromised Certification Authorities.")**)

<br/>
<hr/>

<p style="float : left"><a href="./Public-Key-Pins.json" title="JSON representing this particular Web Concept value">JSON</a></p>
<p style="text-align: right">Return to list of all ( <a href="../http-header/">HTTP Header Fields</a> | <a href="../">Web Concepts</a> )</p>
