---
layout: page
title:  "JSON Web Token Claim: nbf"
---

**[RFC 7519: JSON Web Token (JWT)](/specs/IETF/RFC/7519 "JSON Web Token (JWT) is a compact, URL-safe means of representing claims to be transferred between two parties. The claims in a JWT are encoded as a JSON object that is used as the payload of a JSON Web Signature (JWS) structure or as the plaintext of a JSON Web Encryption (JWE) structure, enabling the claims to be digitally signed or integrity protected with a Message Authentication Code (MAC) and/or encrypted."):** [The "nbf" (not before) claim identifies the time before which the JWT MUST NOT be accepted for processing. The processing of the "nbf" claim requires that the current date/time MUST be after or equal to the not-before date/time listed in the "nbf" claim.](http://tools.ietf.org/html/rfc7519#section-4.1.5 "Read documentation for JSON Web Token Claim &#34;nbf&#34;")

<br/>
<hr/>

<p style="text-align: right">Return to list of all ( <a href="../jwt-claims">JSON Web Token Claims</a> | <a href="../">Web Concepts</a> )</p>