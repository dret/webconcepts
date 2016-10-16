---
layout:    page
title:     "HTTP Authentication Schemes"
permalink: /concepts/http-authentication-schemes
---



The following 6 HTTP Authentication Scheme values were found in [all available `webconcepts.info` specifications](/specs). Please be advised that the table shown here is maintained and compiled from [Web Concepts](/) sources. The [official HTTP Authentication Scheme registry](http://www.iana.org/assignments/http-authschemes/http-authschemes.xhtml#authschemes) is maintained by the [*Internet Assigned Numbers Authority (IANA)*](http://www.iana.org/).

HTTP Authentication Scheme | Specification
-------: | :-------
[`Basic`](/concepts/http-authentication-scheme/Basic) | [**RFC 7617**: The 'Basic' HTTP Authentication Scheme](/specs/IETF/RFC/7617 "This document defines the &#34;Basic&#34; Hypertext Transfer Protocol (HTTP) authentication scheme, which transmits credentials as user-id/password pairs, encoded using Base64.")
[`Bearer`](/concepts/http-authentication-scheme/Bearer) | [**RFC 6750**: The OAuth 2.0 Authorization Framework: Bearer Token Usage](/specs/IETF/RFC/6750 "This specification describes how to use bearer tokens in HTTP requests to access OAuth 2.0 protected resources. Any party in possession of a bearer token (a &#34;bearer&#34;) can use it to get access to the associated resources (without demonstrating possession of a cryptographic key). To prevent misuse, bearer tokens need to be protected from disclosure in storage and in transport.")
[`Digest`](/concepts/http-authentication-scheme/Digest) | [**RFC 7616**: HTTP Digest Access Authentication](/specs/IETF/RFC/7616 "The Hypertext Transfer Protocol (HTTP) provides a simple challenge-response authentication mechanism that may be used by a server to challenge a client request and by a client to provide authentication information. This document defines the HTTP Digest Authentication scheme that can be used with the HTTP authentication mechanism.")
[`HOBA`](/concepts/http-authentication-scheme/HOBA) | [**RFC 7486**: HTTP Origin-Bound Authentication (HOBA)](/specs/IETF/RFC/7486 "HTTP Origin-Bound Authentication (HOBA) is a digital-signature-based design for an HTTP authentication method. The design can also be used in JavaScript-based authentication embedded in HTML. HOBA is an alternative to HTTP authentication schemes that require passwords and therefore avoids all problems related to passwords, such as leakage of server-side password databases.")
[`Negotiate`](/concepts/http-authentication-scheme/Negotiate) | [**RFC 4559**: SPNEGO-based Kerberos and NTLM HTTP Authentication in Microsoft Windows](/specs/IETF/RFC/4559 "This document describes how the Microsoft Internet Explorer (MSIE) and Internet Information Services (IIS) incorporated in Microsoft Windows 2000 use Kerberos for security enhancements of web transactions. The Hypertext Transport Protocol (HTTP) auth-scheme of &#34;negotiate&#34; is defined here; when the negotiation results in the selection of Kerberos, the security services of authentication and, optionally, impersonation (the IIS server assumes the windows identity of the principal that has been authenticated) are performed. This document explains how HTTP authentication utilizes the Simple and Protected GSS-API Negotiation mechanism. Details of Simple And Protected Negotiate (SPNEGO) implementation are not provided in this document.")
[`OAuth`](/concepts/http-authentication-scheme/OAuth) | [**RFC 5849**: The OAuth 1.0 Protocol](/specs/IETF/RFC/5849 "OAuth provides a method for clients to access server resources on behalf of a resource owner (such as a different client or an end-user). It also provides a process for end-users to authorize third-party access to their server resources without sharing their credentials (typically, a username and password pair), using user-agent redirections.")

<br/>
<hr/>

<p style="float : left"><a href="http-authentication-schemes.json" title="JSON representing all values for this Web Concept">JSON</a></p>
