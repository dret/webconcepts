---
layout:        concept
permalink:     "/concepts/jwt-confirmation-method/jku"
title:         "JWT Confirmation Method: jku"
concept-name:  JWT Confirmation Method
concept-value: jku
description: "The proof-of-possession key can be passed by reference instead of being passed by value. This is done using the \"jku\" member. Its value is a URI that refers to a resource for a set of JSON-encoded public keys represented as a JWK Set, one of which is the proof-of-possession key."
---

[The proof-of-possession key can be passed by reference instead of being passed by value. This is done using the "jku" member. Its value is a URI that refers to a resource for a set of JSON-encoded public keys represented as a JWK Set, one of which is the proof-of-possession key.](https://datatracker.ietf.org/doc/html/rfc7800#section-3.5 "Read documentation for JWT Confirmation Method &#34;jku&#34;") (**[RFC 7800: Proof-of-Possession Key Semantics for JSON Web Tokens (JWTs)](/specs/IETF/RFC/7800 "This specification describes how to declare in a JSON Web Token (JWT) that the presenter of the JWT possesses a particular proof-of-possession key and how the recipient can cryptographically confirm proof of possession of the key by the presenter. Being able to prove possession of a key is also sometimes described as the presenter being a holder-of-key.")**)

<br/>
<hr/>

<p style="float : left"><a href="./jku.json" title="JSON representing this particular Web Concept value">JSON</a></p>
<p style="text-align: right">Return to list of all ( <a href="../jwt-confirmation-method/">JWT Confirmation Methods</a> | <a href="../">Web Concepts</a> )</p>
