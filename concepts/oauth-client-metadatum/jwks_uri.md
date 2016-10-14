---
layout:      page
permalink:   "/concepts/oauth-client-metadatum/jwks_uri"
title:       "OAuth Dynamic Client Registration Metadatum: jwks_uri"
description: "Client's JSON Web Key Set document value, which contains the client's public keys. The value of this field MUST be a JSON object containing a valid JWK Set. These keys can be used by higher-level protocols that use signing or encryption. This parameter is intended to be used by clients that cannot use the \"jwks_uri\" parameter, such as native clients that cannot host public URLs."
---

**[RFC 7591: OAuth 2.0 Dynamic Client Registration Protocol](/specs/IETF/RFC/7591 "This specification defines mechanisms for dynamically registering OAuth 2.0 clients with authorization servers. Registration requests send a set of desired client metadata values to the authorization server. The resulting registration responses return a client identifier to use at the authorization server and the client metadata values registered for the client. The client can then use this registration information to communicate with the authorization server using the OAuth 2.0 protocol. This specification also defines a set of common client metadata fields and values for clients to use during registration."):** [Client's JSON Web Key Set document value, which contains the client's public keys. The value of this field MUST be a JSON object containing a valid JWK Set. These keys can be used by higher-level protocols that use signing or encryption. This parameter is intended to be used by clients that cannot use the "jwks_uri" parameter, such as native clients that cannot host public URLs.](http://tools.ietf.org/html/rfc7591#section-2 "Read documentation for OAuth Dynamic Client Registration Metadatum &#34;jwks_uri&#34;")

<br/>
<hr/>

<p style="float : left"><a href="./jwks_uri.json" title="JSON representing this particular Web Concept value">JSON</a></p>
<p style="text-align: right">Return to list of all ( <a href="../oauth-client-metadata">OAuth Dynamic Client Registration Metadata</a> | <a href="../">Web Concepts</a> )</p>
