---
layout:      page
permalink:   "/concepts/http-header/Authorization"
title:       "HTTP Header Field: Authorization"
description: "Protocol parameters can be transmitted using the HTTP \"Authorization\" header field as defined by RFC 2617 with the auth-scheme name set to \"OAuth\" (case insensitive)."
---

**[RFC 5849: The OAuth 1.0 Protocol](/specs/IETF/RFC/5849 "OAuth provides a method for clients to access server resources on behalf of a resource owner (such as a different client or an end-user). It also provides a process for end-users to authorize third-party access to their server resources without sharing their credentials (typically, a username and password pair), using user-agent redirections."):** [Protocol parameters can be transmitted using the HTTP "Authorization" header field as defined by RFC 2617 with the auth-scheme name set to "OAuth" (case insensitive).](http://tools.ietf.org/html/rfc5849#section-3.5.1 "Read documentation for HTTP Header Field &#34;Authorization&#34;")

**[RFC 7235: Hypertext Transfer Protocol (HTTP/1.1): Authentication](/specs/IETF/RFC/7235 "The Hypertext Transfer Protocol (HTTP) is an application-level protocol for distributed, collaborative, hypermedia information systems. This document defines the HTTP Authentication framework."):** [The "Authorization" header field allows a user agent to authenticate itself with an origin server - usually, but not necessarily, after receiving a 401 (Unauthorized) response. Its value consists of credentials containing the authentication information of the user agent for the realm of the resource being requested.](http://tools.ietf.org/html/rfc7235#section-4.1 "Read documentation for HTTP Header Field &#34;Authorization&#34;")

**[RFC 7616: HTTP Digest Access Authentication](/specs/IETF/RFC/7616 "The Hypertext Transfer Protocol (HTTP) provides a simple challenge-response authentication mechanism that may be used by a server to challenge a client request and by a client to provide authentication information. This document defines the HTTP Digest Authentication scheme that can be used with the HTTP authentication mechanism."):** [The client is expected to retry the request, passing an Authorization header field line with Digest scheme, which is defined according to the framework above. The values of the opaque and algorithm fields must be those supplied in the WWW-Authenticate response header field for the entity being requested.](http://tools.ietf.org/html/rfc7616#section-3.4 "Read documentation for HTTP Header Field &#34;Authorization&#34;")

<br/>
<hr/>

<p style="float : left"><a href="./Authorization.json" title="JSON representing this particular Web Concept value">JSON</a></p>
<p style="text-align: right">Return to list of all ( <a href="../http-headers">HTTP Header Fields</a> | <a href="../">Web Concepts</a> )</p>
