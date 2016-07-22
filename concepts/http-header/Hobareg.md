---
layout: page
title:  "HTTP Header Field: Hobareg"
---

[**RFC 7486**: HTTP Origin-Bound Authentication (HOBA)](/specs/IETF/RFC/7486 "HTTP Origin-Bound Authentication (HOBA) is a digital-signature-based design for an HTTP authentication method. The design can also be used in JavaScript-based authentication embedded in HTML. HOBA is an alternative to HTTP authentication schemes that require passwords and therefore avoids all problems related to passwords, such as leakage of server-side password databases."): [The server MUST add a header field to the response message when the registration has succeeded in order to indicate the new state. The header to be used is "Hobareg", and the value when registration has succeeded is to be "regok". When registration is in an intermediate state (e.g., on an HTTP response for an interstitial page), the server MAY add this header with a value of "reginwork".]()

