---
layout:        concept
permalink:     "/concepts/jwt-claim/txn"
title:         "JSON Web Token Claim: txn"
concept-name:  JSON Web Token Claim
concept-value: txn
description: "An OPTIONAL string value that represents a unique transaction identifier. In cases in which multiple related JWTs are issued, the transaction identifier claim can be used to correlate these related JWTs. Note that this claim can be used in JWTs that are SETs and also in JWTs using non-SET profiles."
---

[An OPTIONAL string value that represents a unique transaction identifier. In cases in which multiple related JWTs are issued, the transaction identifier claim can be used to correlate these related JWTs. Note that this claim can be used in JWTs that are SETs and also in JWTs using non-SET profiles.](https://datatracker.ietf.org/doc/html/rfc8417#section-2.2 "Read documentation for JSON Web Token Claim &#34;txn&#34;") (**[RFC 8417: Security Event Token (SET)](/specs/IETF/RFC/8417 "This specification defines the Security Event Token (SET) data structure. A SET describes statements of fact from the perspective of an issuer about a subject. These statements of fact represent an event that occurred directly to or about a security subject, for example, a statement about the issuance or revocation of a token on behalf of a subject. This specification is intended to enable representing security- and identity-related events. A SET is a JSON Web Token (JWT), which can be optionally signed and/or encrypted. SETs can be distributed via protocols such as HTTP.")**)

<br/>
<hr/>

<p style="float : left"><a href="./txn.json" title="JSON representing this particular Web Concept value">JSON</a></p>
<p style="text-align: right">Return to list of all ( <a href="../jwt-claim/">JSON Web Token Claims</a> | <a href="../">Web Concepts</a> )</p>
