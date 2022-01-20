---
layout:        concept
permalink:     "/concepts/well-known-uri/reload-config"
title:         "Well-Known URI: reload-config"
concept-name:  Well-Known URI
concept-value: reload-config
description: "If a URL for the configuration server is not provided, the node MUST do a DNS SRV query using a Service name of \"reload-config\" and a protocol of TCP to find a configuration server and form the URL by appending a path of \"/.well-known/reload-config\" to the overlay name."
---

[If a URL for the configuration server is not provided, the node MUST do a DNS SRV query using a Service name of "reload-config" and a protocol of TCP to find a configuration server and form the URL by appending a path of "/.well-known/reload-config" to the overlay name.](https://datatracker.ietf.org/doc/html/rfc6940#section-11.2 "Read documentation for Well-Known URI &#34;reload-config&#34;") (**[RFC 6940: REsource LOcation And Discovery (RELOAD) Base Protocol](/specs/IETF/RFC/6940 "This specification defines REsource LOcation And Discovery (RELOAD), a peer-to-peer (P2P) signaling protocol for use on the Internet. A P2P signaling protocol provides its clients with an abstract storage and messaging service between a set of cooperating peers that form the overlay network. RELOAD is designed to support a P2P Session Initiation Protocol (P2PSIP) network, but can be utilized by other applications with similar requirements by defining new usages that specify the Kinds of data that need to be stored for a particular application. RELOAD defines a security model based on a certificate enrollment service that provides unique identities. NAT traversal is a fundamental service of the protocol. RELOAD also allows access from &#34;client&#34; nodes that do not need to route traffic or store data for others.")**)

<br/>
<hr/>

<p style="float : left"><a href="./reload-config.json" title="JSON representing this particular Web Concept value">JSON</a></p>
<p style="text-align: right">Return to list of all ( <a href="../well-known-uri/">Well-Known URIs</a> | <a href="../">Web Concepts</a> )</p>
