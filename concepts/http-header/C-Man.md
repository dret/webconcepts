---
layout:        concept
permalink:     "/concepts/http-header/C-Man"
title:         "HTTP Header Field: C-Man"
concept-name:  HTTP Header Field
concept-value: C-Man
description: "A mandatory extension declaration indicates that the ultimate recipient MUST consult and adhere to the rules given by the extension when processing the message or reporting an error. Hop-by-hop extension declarations are meaningful only for a single HTTP connection. In HTTP/1.1, C-Man, C-Opt, and all header fields with matching header-prefix values defined by C-Man and C-Opt MUST be protected by a Connection header field. That is, these header fields are to be included as Connection header field directives."
---

[A mandatory extension declaration indicates that the ultimate recipient MUST consult and adhere to the rules given by the extension when processing the message or reporting an error. Hop-by-hop extension declarations are meaningful only for a single HTTP connection. In HTTP/1.1, C-Man, C-Opt, and all header fields with matching header-prefix values defined by C-Man and C-Opt MUST be protected by a Connection header field. That is, these header fields are to be included as Connection header field directives.](https://datatracker.ietf.org/doc/html/rfc2774#section-4.2 "Read documentation for HTTP Header Field &#34;C-Man&#34;") (**[RFC 2774: An HTTP Extension Framework](/specs/IETF/RFC/2774 "A wide range of applications have proposed various extensions of the HTTP protocol. Current efforts span an enormous range, including distributed authoring, collaboration, printing, and remote procedure call mechanisms. These HTTP extensions are not coordinated, since there has been no standard framework for defining extensions and thus, separation of concerns. This document describes a generic extension mechanism for HTTP, which is designed to address the tension between private agreement and public specification and to accommodate extension of applications using HTTP clients, servers, and proxies. The proposal associates each extension with a globally unique identifier, and uses HTTP header fields to carry the extension identifier and related information between the parties involved in the extended communication.")**)

<br/>
<hr/>

<p style="float : left"><a href="./C-Man.json" title="JSON representing this particular Web Concept value">JSON</a></p>
<p style="text-align: right">Return to list of all ( <a href="../http-header/">HTTP Header Fields</a> | <a href="../">Web Concepts</a> )</p>
