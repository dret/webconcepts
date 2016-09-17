---
layout:      page
title:       "HTTP Header Field: Public-Key-Pins-Report-Only"
description: "Upon receipt of a Public-Key-Pins-Report-Only response header field, the UA should evaluate the policy expressed in the field, and SHOULD generate and send a report. However, failure to validate the Pins in the field MUST have no effect on the validity or non-validity of the policy expressed in the PKP field or in previously noted Pins for the Known Pinned Host."
---

**[RFC 7469: Public Key Pinning Extension for HTTP](/specs/IETF/RFC/7469 "This document defines a new HTTP header that allows web host operators to instruct user agents to remember (&#34;pin&#34;) the hosts' cryptographic identities over a period of time. During that time, user agents (UAs) will require that the host presents a certificate chain including at least one Subject Public Key Info structure whose fingerprint matches one of the pinned fingerprints for that host. By effectively reducing the number of trusted authorities who can authenticate the domain during the lifetime of the pin, pinning may reduce the incidence of man-in-the-middle attacks due to compromised Certification Authorities."):** [Upon receipt of a Public-Key-Pins-Report-Only response header field, the UA should evaluate the policy expressed in the field, and SHOULD generate and send a report. However, failure to validate the Pins in the field MUST have no effect on the validity or non-validity of the policy expressed in the PKP field or in previously noted Pins for the Known Pinned Host.](http://tools.ietf.org/html/rfc7469#section-2.5 "Read documentation for HTTP Header Field &#34;Public-Key-Pins-Report-Only&#34;")

<br/>
<hr/>

<p style="float : left"><a href="Public-Key-Pins-Report-Only.json" title="Get JSON representing this particular Web Concept">Get JSON</a></p>
<p style="text-align: right">Return to list of all ( <a href="../http-headers">HTTP Header Fields</a> | <a href="../">Web Concepts</a> )</p>
