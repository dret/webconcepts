---
layout:    page
title:     "OAuth Extensions Errors"
permalink: /concepts/oauth-extension-error/
---



The following 4 OAuth Extensions Error values were found in [all available `webconcepts.info` specifications](/specs). Please be advised that the table shown here is maintained and compiled from [Web Concepts](/) sources. The [official OAuth Extensions Error registry](http://www.iana.org/assignments/oauth-parameters/oauth-parameters.xhtml#extensions-error) is maintained by the [*Internet Assigned Numbers Authority (IANA)*](http://www.iana.org/).

OAuth Extensions Error | Specification
-------: | :-------
[`insufficient_scope`](/concepts/oauth-extension-error/insufficient_scope "The request requires higher privileges than provided by the access token.") | [**RFC 6750**: The OAuth 2.0 Authorization Framework: Bearer Token Usage](/specs/IETF/RFC/6750 "This specification describes how to use bearer tokens in HTTP requests to access OAuth 2.0 protected resources. Any party in possession of a bearer token (a &#34;bearer&#34;) can use it to get access to the associated resources (without demonstrating possession of a cryptographic key). To prevent misuse, bearer tokens need to be protected from disclosure in storage and in transport.")
[`invalid_request`](/concepts/oauth-extension-error/invalid_request "The request is missing a required parameter, includes an unsupported parameter or parameter value, repeats the same parameter, uses more than one method for including an access token, or is otherwise malformed.") | [**RFC 6750**: The OAuth 2.0 Authorization Framework: Bearer Token Usage](/specs/IETF/RFC/6750 "This specification describes how to use bearer tokens in HTTP requests to access OAuth 2.0 protected resources. Any party in possession of a bearer token (a &#34;bearer&#34;) can use it to get access to the associated resources (without demonstrating possession of a cryptographic key). To prevent misuse, bearer tokens need to be protected from disclosure in storage and in transport.")
[`invalid_token`](/concepts/oauth-extension-error/invalid_token "The access token provided is expired, revoked, malformed, or invalid for other reasons.") | [**RFC 6750**: The OAuth 2.0 Authorization Framework: Bearer Token Usage](/specs/IETF/RFC/6750 "This specification describes how to use bearer tokens in HTTP requests to access OAuth 2.0 protected resources. Any party in possession of a bearer token (a &#34;bearer&#34;) can use it to get access to the associated resources (without demonstrating possession of a cryptographic key). To prevent misuse, bearer tokens need to be protected from disclosure in storage and in transport.")
[`unsupported_token_type`](/concepts/oauth-extension-error/unsupported_token_type "The authorization server does not support the revocation of the presented token type. That is, the client tried to revoke an access token on a server not supporting this feature.") | [**RFC 7009**: OAuth 2.0 Token Revocation](/specs/IETF/RFC/7009 "This document proposes an additional endpoint for OAuth authorization servers, which allows clients to notify the authorization server that a previously obtained refresh or access token is no longer needed. This allows the authorization server to clean up security credentials. A revocation request will invalidate the actual token and, if applicable, other tokens based on the same authorization grant.")

<br/>
<hr/>

<p style="float : left"><a href="../oauth-extension-error.json" title="JSON representing all values for this Web Concept">JSON</a></p>
