---
layout: page
title:  "Resource Hints"
---

| Canonical Name | W3C TR http://www.w3.org/TR/resource-hints
| Online Version | [`http://www.w3.org/TR/resource-hints`](http://www.w3.org/TR/resource-hints)
| Organization | [World Wide Web Consortium (W3C)](..)
| Series | [Technical Report (TR)](.)
| Abstract | This specification defines the dns-prefetch, preconnect, prefetch, and prerender relationships of the HTML Link Element (<link>). These primitives enable the developer, and the server generating or delivering the resources, to assist the user agent in the decision process of which origins it should connect to, and which resources it should fetch and preprocess to improve page performance.

<br/>
<hr/>

### Link Relations

[`dns-prefetch`](/concepts/link-relation/dns-prefetch "The dns-prefetch link relation type is used to indicate an origin that will be used to fetch required resources, and that the user agent SHOULD resolve as early as possible."), [`preconnect`](/concepts/link-relation/preconnect "The preconnect link relation type is used to indicate an origin that will be used to fetch required resources. Initiating an early connection, which includes the DNS lookup, TCP handshake, and optional TLS negotiation, allows the user agent to mask the high latency costs of establishing a connection."), [`prefetch`](/concepts/link-relation/prefetch "The prefetch link relation type is used to declare a resource that might be required by the next navigation, and that the user agent SHOULD fetch, such that the user agent can deliver a faster response once the resource is requested in the future."), [`prerender`](/concepts/link-relation/prerender "The prerender link relation type is used to declare an HTML resource that might be required by the next navigation, and that the user agent SHOULD fetch and execute, such that the user agent can deliver faster response and processing once the resource is requested in the future.")



<br/>
<hr/>

<p style="text-align: right">Return to ( <a href="./">Series</a> | <a href="../">Organization</a> | <a href="../../">all Specifications</a> )</p>