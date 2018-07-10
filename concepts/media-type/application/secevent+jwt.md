---
layout:        concept
permalink:     "/concepts/media-type/application/secevent+jwt"
title:         "Media Type: application/secevent+jwt"
concept-name:  Media Type
concept-value: application/secevent+jwt
description: "This specification registers the \"application/secevent+jwt\" media type, which can be used to indicate that the content is a SET. SETs MAY include this media type in the \"typ\" header parameter of the JWT representing the SET to explicitly declare that the JWT is a SET. This MUST be included if the SET could be used in an application context in which it could be confused with other kinds of JWTs."
---

[This specification registers the "application/secevent+jwt" media type, which can be used to indicate that the content is a SET. SETs MAY include this media type in the "typ" header parameter of the JWT representing the SET to explicitly declare that the JWT is a SET. This MUST be included if the SET could be used in an application context in which it could be confused with other kinds of JWTs.](http://tools.ietf.org/html/rfc8417#section-2.3 "Read documentation for Media Type &#34;application/secevent+jwt&#34;") (**[RFC 8417: Security Event Token (SET)](/specs/IETF/RFC/8417 "This specification defines the Security Event Token (SET) data structure. A SET describes statements of fact from the perspective of an issuer about a subject. These statements of fact represent an event that occurred directly to or about a security subject, for example, a statement about the issuance or revocation of a token on behalf of a subject. This specification is intended to enable representing security- and identity-related events. A SET is a JSON Web Token (JWT), which can be optionally signed and/or encrypted. SETs can be distributed via protocols such as HTTP.")**)

<br/>
<hr/>

<p style="float : left"><a href="./application/secevent+jwt.json" title="JSON representing this particular Web Concept value">JSON</a></p>
<p style="text-align: right">Return to list of all ( <a href="../media-type/">Media Types</a> | <a href="../">Web Concepts</a> )</p>
