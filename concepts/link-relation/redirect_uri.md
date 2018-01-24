---
layout:        concept
permalink:     "/concepts/link-relation/redirect_uri"
title:         "Link Relation: redirect_uri"
concept-name:  Link Relation
concept-value: redirect_uri
description: "If a client wishes to use a redirect URL that is on a different domain than their client_id, or if the redirect URL uses a custom scheme (such as when the client is a native application), then the client will need to whitelist those redirect URLs so that authorization endpoints can be sure it is safe to redirect users there. The client SHOULD publish one or more <link> tags or Link HTTP headers with a rel attribute of redirect_uri at the client_id URL."
---

[If a client wishes to use a redirect URL that is on a different domain than their client_id, or if the redirect URL uses a custom scheme (such as when the client is a native application), then the client will need to whitelist those redirect URLs so that authorization endpoints can be sure it is safe to redirect users there. The client SHOULD publish one or more <link> tags or Link HTTP headers with a rel attribute of redirect_uri at the client_id URL.](http://www.w3.org/TR/indieauth/#redirect-url "Read documentation for Link Relation &#34;redirect_uri&#34;") (**[W3C TR http://www.w3.org/TR/indieauth: IndieAuth](/specs/W3C/TR/indieauth "IndieAuth is an identity layer on top of OAuth 2.0, primarily used to obtain an OAuth 2.0 Bearer Token for use by Micropub clients. End-Users and Clients are all represented by URLs. IndieAuth enables Clients to verify the identity of an End-User, as well as to obtain an access token that can be used to access resources under the control of the End-User.")**)

<br/>
<hr/>

<p style="float : left"><a href="./redirect_uri.json" title="JSON representing this particular Web Concept value">JSON</a></p>
<p style="text-align: right">Return to list of all ( <a href="../link-relation/">Link Relations</a> | <a href="../">Web Concepts</a> )</p>
