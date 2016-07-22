---
layout: page
title:  "HTTP Header Field: Public-Key-Pins"
---

**[RFC 7469: Public Key Pinning Extension for HTTP](/specs/IETF/RFC/7469 "This document defines a new HTTP header that allows web host operators to instruct user agents to remember (&#34;pin&#34;) the hosts' cryptographic identities over a period of time. During that time, user agents (UAs) will require that the host presents a certificate chain including at least one Subject Public Key Info structure whose fingerprint matches one of the pinned fingerprints for that host. By effectively reducing the number of trusted authorities who can authenticate the domain during the lifetime of the pin, pinning may reduce the incidence of man-in-the-middle attacks due to compromised Certification Authorities."):** [Whenever a UA receives a Valid Pinning Header, it MUST set its Pinning Metadata to the exact Pins, Effective Expiration Date (computed from max-age), and (if any) report-uri given in the most recently received Valid Pinning Header.](http://tools.ietf.org/html/rfc7469#section-2.5)

<br/>
<hr/>

<p style="text-align: right"><a href="../http-headers">Return to list of all HTTP Header Fields</a></p>