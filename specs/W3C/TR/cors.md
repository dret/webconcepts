---
layout: page
title:  "Cross-Origin Resource Sharing (CORS)"
---

| *Canonical Name:* | W3C TR http://www.w3.org/TR/cors
| *Document URI:* | `http://www.w3.org/TR/cors`
| *Online Version:* | [`http://www.w3.org/TR/cors`](http://www.w3.org/TR/cors)
| *Organization:* | [World Wide Web Consortium (W3C)](..  "List of specification series by this organization")
| *Series:* | [Technical Report (TR)](.  "List of specifications in this series")
| *Abstract:* | This document defines a mechanism to enable client-side cross-origin requests. Specifications that enable an API to make cross-origin requests to resources can use the algorithms defined by this specification. If such an API is used on http://example.org resources, a resource on http://hello-world.example can opt in using the mechanism described by this specification (e.g., specifying Access-Control-Allow-Origin: http://example.org as response header), which would allow that resource to be fetched cross-origin from http://example.org.

<br/>
<hr/>

## Specified Web Concepts:

### HTTP Header Fields

[`Access-Control-Allow-Credentials`](/concepts/http-header/Access-Control-Allow-Credentials "The Access-Control-Allow-Credentials header indicates whether the response to request can be exposed when the omit credentials flag is unset. When part of the response to a preflight request it indicates that the actual request can include user credentials."), [`Access-Control-Allow-Headers`](/concepts/http-header/Access-Control-Allow-Headers "The Access-Control-Allow-Headers header indicates, as part of the response to a preflight request, which header field names can be used during the actual request."), [`Access-Control-Allow-Methods`](/concepts/http-header/Access-Control-Allow-Methods "The Access-Control-Allow-Methods header indicates, as part of the response to a preflight request, which methods can be used during the actual request."), [`Access-Control-Allow-Origin`](/concepts/http-header/Access-Control-Allow-Origin "The Access-Control-Allow-Origin header indicates whether a resource can be shared based by returning the value of the Origin request header, &#34;*&#34;, or &#34;null&#34; in the response."), [`Access-Control-Expose-Headers`](/concepts/http-header/Access-Control-Expose-Headers "The Access-Control-Expose-Headers header indicates which headers are safe to expose to the API of a CORS API specification."), [`Access-Control-Max-Age`](/concepts/http-header/Access-Control-Max-Age "The Access-Control-Max-Age header indicates how long the results of a preflight request can be cached in a preflight result cache."), [`Access-Control-Request-Headers`](/concepts/http-header/Access-Control-Request-Headers "The Access-Control-Request-Headers header indicates which headers will be used in the actual request as part of the preflight request."), [`Access-Control-Request-Method`](/concepts/http-header/Access-Control-Request-Method "The Access-Control-Request-Method header indicates which method will be used in the actual request as part of the preflight request."), [`Origin`](/concepts/http-header/Origin "The Origin header indicates where the cross-origin request or preflight request originates from.")



<br/>
<hr/>

<p style="text-align: right">Return to ( <a href="./">Series</a> | <a href="../">Organization</a> | <a href="../../">all Specifications</a> )</p>