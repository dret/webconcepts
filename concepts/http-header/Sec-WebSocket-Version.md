---
layout:      page
title:       "HTTP Header Field: Sec-WebSocket-Version"
description: "The Sec-WebSocket-Version header field is used in the WebSocket opening handshake. It is sent from the client to the server to indicate the protocol version of the connection. This enables servers to correctly interpret the opening handshake and subsequent data being sent from the data, and close the connection if the server cannot interpret that data in a safe manner. The Sec-WebSocket-Version header field is also sent from the server to the client on WebSocket handshake error, when the version received from the client does not match a version understood by the server. In such a case, the header field includes the protocol version(s) supported by the server."
---

**[RFC 6455: The WebSocket Protocol](/specs/IETF/RFC/6455 "The WebSocket Protocol enables two-way communication between a client running untrusted code in a controlled environment to a remote host that has opted-in to communications from that code. The security model used for this is the origin-based security model commonly used by web browsers. The protocol consists of an opening handshake followed by basic message framing, layered over TCP. The goal of this technology is to provide a mechanism for browser-based applications that need two-way communication with servers that does not rely on opening multiple HTTP connections (e.g., using XMLHttpRequest or <iframe>s and long polling)."):** [The Sec-WebSocket-Version header field is used in the WebSocket opening handshake. It is sent from the client to the server to indicate the protocol version of the connection. This enables servers to correctly interpret the opening handshake and subsequent data being sent from the data, and close the connection if the server cannot interpret that data in a safe manner. The Sec-WebSocket-Version header field is also sent from the server to the client on WebSocket handshake error, when the version received from the client does not match a version understood by the server. In such a case, the header field includes the protocol version(s) supported by the server.](http://tools.ietf.org/html/rfc6455#section-11.3.5 "Read documentation for HTTP Header Field &#34;Sec-WebSocket-Version&#34;")

<br/>
<hr/>

<p style="float : left"><a href="Sec-WebSocket-Version.json" title="JSON representing this particular Web Concept">JSON</a></p>
<p style="text-align: right">Return to list of all ( <a href="../http-headers">HTTP Header Fields</a> | <a href="../">Web Concepts</a> )</p>
