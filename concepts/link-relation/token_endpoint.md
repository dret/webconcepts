---
layout:        concept
permalink:     "/concepts/link-relation/token_endpoint"
title:         "Link Relation: token_endpoint"
concept-name:  Link Relation
concept-value: token_endpoint
description: "After obtaining the End-User's profile URL, the client fetches the URL and looks for the authorization_endpoint and token_endpoint rel values in the HTTP Link headers and HTML <link> tags. After the state parameter is validated, the client makes a POST request to the token endpoint to verify the authorization code and retrieve the final user profile URL."
---

[After obtaining the End-User's profile URL, the client fetches the URL and looks for the authorization_endpoint and token_endpoint rel values in the HTTP Link headers and HTML <link> tags. After the state parameter is validated, the client makes a POST request to the token endpoint to verify the authorization code and retrieve the final user profile URL.](http://www.w3.org/TR/indieauth/#token-endpoint-0 "Read documentation for Link Relation &#34;token_endpoint&#34;") (**[W3C TR http://www.w3.org/TR/indieauth: IndieAuth](/specs/W3C/TR/indieauth "IndieAuth is an identity layer on top of OAuth 2.0, primarily used to obtain an OAuth 2.0 Bearer Token for use by Micropub clients. End-Users and Clients are all represented by URLs. IndieAuth enables Clients to verify the identity of an End-User, as well as to obtain an access token that can be used to access resources under the control of the End-User.")**)

<br/>
<hr/>

<p style="float : left"><a href="./token_endpoint.json" title="JSON representing this particular Web Concept value">JSON</a></p>
<p style="text-align: right">Return to list of all ( <a href="../link-relation/">Link Relations</a> | <a href="../">Web Concepts</a> )</p>
