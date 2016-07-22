---
layout: page
title:  "PEP - An Extension Mechanism for HTTP"
---

| Canonical Name | W3C TR http://www.w3.org/TR/WD-http-pep
| Online Version | [`http://www.w3.org/TR/WD-http-pep`](http://www.w3.org/TR/WD-http-pep)
| Organization | [World Wide Web Consortium (W3C)](..)
| Series | [Technical Report (TR)](.)
| Abstract |  HTTP is used increasingly in applications that need more facilities than the standard version of the protocol provides, ranging from distributed authoring, collaboration, and printing, to various remote procedure call mechanisms. The Protocol Extension Protocol (PEP) is an extension mechanism designed to address the tension between private agreement and public specification and to accommodate extension of applications such as HTTP clients, servers, and proxies. The PEP mechanism is designed to associate each extension with a URI, and use a few new RFC 822 derived header fields to carry the extension identifier and related information between the parties involved in an extended transaction. This document defines PEP and describes the interactions between PEP and HTTP/1.1. PEP is intended to be compatible with HTTP/1.0 inasmuch as HTTP/1.1 is compatible with HTTP/1.0. It is proposed that the PEP extension mechanism be included in future versions of HTTP. The PEP extension mechanism may be applicable to other information exchange not mentioned in this document. It is recommended that readers get acquainted with section 1.4 for a suggested reading of this specification and a list of sections specific for HTTP based applications.

<br/>
<hr/>

### HTTP Header Fields

[`C-PEP`](/concepts/http-header/C-PEP "PEP hop-by-hop extension declarations are meaningful only for a single transport-level connection. The C-PEP header field is a hop-by-hop header field and must not be communicated by proxies over further connections."), [`C-PEP-Info`](/concepts/http-header/C-PEP-Info "PEP hop-by-hop policies are meaningful only for a single transport-level connection. The C-PEP-Info header field is a hop-by-hop header field and MUST NOT be communicated by proxies over further connections."), [`PEP`](/concepts/http-header/PEP "PEP end-to-end declarations must be transmitted to the ultimate recipient of the declaration. The PEP header field is an end-to-end header field."), [`PEP-Info`](/concepts/http-header/PEP-Info "PEP end-to-end policies MUST be transmitted to the ultimate recipient of a message.")



<br/>
<hr/>

<p style="text-align: right">Return to ( <a href="./">Series</a> | <a href="../">Organization</a> | <a href="../../">all Specifications</a> )</p>