---
layout:        concept
permalink:     "/concepts/jwt-claim/exp"
title:         "JSON Web Token Claim: exp"
concept-name:  JSON Web Token Claim
concept-value: exp
description: "The \"exp\" (expiration time) claim identifies the expiration time on or after which the JWT MUST NOT be accepted for processing. The processing of the \"exp\" claim requires that the current date/time MUST be before the expiration date/time listed in the \"exp\" claim."
---

[The "exp" (expiration time) claim identifies the expiration time on or after which the JWT MUST NOT be accepted for processing. The processing of the "exp" claim requires that the current date/time MUST be before the expiration date/time listed in the "exp" claim.](https://datatracker.ietf.org/doc/html/rfc7519#section-4.1.4 "Read documentation for JSON Web Token Claim &#34;exp&#34;") (**[RFC 7519: JSON Web Token (JWT)](/specs/IETF/RFC/7519 "JSON Web Token (JWT) is a compact, URL-safe means of representing claims to be transferred between two parties. The claims in a JWT are encoded as a JSON object that is used as the payload of a JSON Web Signature (JWS) structure or as the plaintext of a JSON Web Encryption (JWE) structure, enabling the claims to be digitally signed or integrity protected with a Message Authentication Code (MAC) and/or encrypted.")**)

<br/>
<hr/>

<p style="float : left"><a href="./exp.json" title="JSON representing this particular Web Concept value">JSON</a></p>
<p style="text-align: right">Return to list of all ( <a href="../jwt-claim/">JSON Web Token Claims</a> | <a href="../">Web Concepts</a> )</p>
