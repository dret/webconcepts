---
layout:    page
title:     "OAuth Access Token Types"
permalink: /concepts/oauth-access-token-type/
---



The following 2 OAuth Access Token Type values were found in [all available `webconcepts.info` specifications](/specs). Please be advised that the table shown here is maintained and compiled from [Web Concepts](/) sources. The [official OAuth Access Token Type registry](http://www.iana.org/assignments/oauth-parameters/oauth-parameters.xhtml#token-types) is maintained by the [*Internet Assigned Numbers Authority (IANA)*](http://www.iana.org/).

OAuth Access Token Type | Specification
-------: | :-------
[`Bearer`](/concepts/oauth-access-token-type/Bearer "A security token with the property that any party in possession of the token (a &#34;bearer&#34;) can use the token in any way that any other party in possession of it can. Using a bearer token does not require a bearer to prove possession of cryptographic key material (proof-of-possession).") | [**RFC 6750**: The OAuth 2.0 Authorization Framework: Bearer Token Usage](/specs/IETF/RFC/6750 "This specification describes how to use bearer tokens in HTTP requests to access OAuth 2.0 protected resources. Any party in possession of a bearer token (a &#34;bearer&#34;) can use it to get access to the associated resources (without demonstrating possession of a cryptographic key). To prevent misuse, bearer tokens need to be protected from disclosure in storage and in transport.")
[`mac`](/concepts/oauth-access-token-type/mac "Authorization servers issue MAC Tokens based on requests from clients.") | [**Internet Draft ietf-oauth-v2-http-mac**: OAuth 2.0 Message Authentication Code (MAC) Tokens](/specs/IETF/I-D/ietf-oauth-v2-http-mac "This specification describes how to use MAC Tokens in HTTP requests to access OAuth 2.0 protected resources. An OAuth client willing to access a protected resource needs to demonstrate possession of a cryptographic key by using it with a keyed message digest function to the request. The document also defines a key distribution protocol for obtaining a fresh session key.")

<br/>
<hr/>

<p style="float : left"><a href="../oauth-access-token-type.json" title="JSON representing all values for this Web Concept">JSON</a></p>
