---
layout:    page
title:     "JWT Confirmation Methods"
permalink: /concepts/jwt-confirmation-method/
---



The following 4 JWT Confirmation Method values were found in [all available `webconcepts.info` specifications](/specs). Please be advised that the table shown here is maintained and compiled from [Web Concepts](/) sources. The [official JWT Confirmation Method registry](http://www.iana.org/assignments/jwt/jwt.xhtml#confirmation-methods) is maintained by the [*Internet Assigned Numbers Authority (IANA)*](http://www.iana.org/).

JWT Confirmation Method | Specification
-------: | :-------
[`jku`](/concepts/jwt-confirmation-method/jku "The proof-of-possession key can be passed by reference instead of being passed by value. This is done using the &#34;jku&#34; member. Its value is a URI that refers to a resource for a set of JSON-encoded public keys represented as a JWK Set, one of which is the proof-of-possession key.") | [**RFC 7800**: Proof-of-Possession Key Semantics for JSON Web Tokens (JWTs)](/specs/IETF/RFC/7800 "This specification describes how to declare in a JSON Web Token (JWT) that the presenter of the JWT possesses a particular proof-of-possession key and how the recipient can cryptographically confirm proof of possession of the key by the presenter. Being able to prove possession of a key is also sometimes described as the presenter being a holder-of-key.")
[`jwe`](/concepts/jwt-confirmation-method/jwe "When the key held by the presenter is a symmetric key, the &#34;jwe&#34; member is an encrypted JSON Web Key encrypted to a key known to the recipient using the JWE Compact Serialization containing the symmetric key.") | [**RFC 7800**: Proof-of-Possession Key Semantics for JSON Web Tokens (JWTs)](/specs/IETF/RFC/7800 "This specification describes how to declare in a JSON Web Token (JWT) that the presenter of the JWT possesses a particular proof-of-possession key and how the recipient can cryptographically confirm proof of possession of the key by the presenter. Being able to prove possession of a key is also sometimes described as the presenter being a holder-of-key.")
[`jwk`](/concepts/jwt-confirmation-method/jwk "When the key held by the presenter is an asymmetric private key, the &#34;jwk&#34; member is a JSON Web Key representing the corresponding asymmetric public key.") | [**RFC 7800**: Proof-of-Possession Key Semantics for JSON Web Tokens (JWTs)](/specs/IETF/RFC/7800 "This specification describes how to declare in a JSON Web Token (JWT) that the presenter of the JWT possesses a particular proof-of-possession key and how the recipient can cryptographically confirm proof of possession of the key by the presenter. Being able to prove possession of a key is also sometimes described as the presenter being a holder-of-key.")
[`kid`](/concepts/jwt-confirmation-method/kid "The proof-of-possession key can also be identified by the use of a Key ID instead of communicating the actual key, provided the recipient is able to obtain the identified key using the Key ID.") | [**RFC 7800**: Proof-of-Possession Key Semantics for JSON Web Tokens (JWTs)](/specs/IETF/RFC/7800 "This specification describes how to declare in a JSON Web Token (JWT) that the presenter of the JWT possesses a particular proof-of-possession key and how the recipient can cryptographically confirm proof of possession of the key by the presenter. Being able to prove possession of a key is also sometimes described as the presenter being a holder-of-key.")

<br/>
<hr/>

<p style="float : left"><a href="../jwt-confirmation-method.json" title="JSON representing all values for this Web Concept">JSON</a></p>
