---
layout: page
title:  "HTTP Header Field: Proxy-Authentication-Info"
---

[**RFC 7615**: The Hypertext Transfer Protocol (HTTP) Authentication-Info and Proxy-Authentication-Info Response Header Fields](/specs/IETF/RFC/7615 "This specification defines the &#34;Authentication-Info&#34; and &#34;Proxy-Authentication-Info&#34; response header fields for use in HTTP authentication schemes which need to return information once the client's authentication credentials have been accepted."): [The Proxy-Authentication-Info response header field is equivalent to Authentication-Info, except that it applies to proxy authentication. However, unlike Authentication-Info, the Proxy-Authentication-Info header field applies only to the next outbound client on the response chain. This is because only the client that chose a given proxy is likely to have the credentials necessary for authentication.](http://tools.ietf.org/html/rfc7615#section-4)

