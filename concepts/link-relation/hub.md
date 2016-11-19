---
layout:      page
permalink:   "/concepts/link-relation/hub"
title:       "Link Relation: hub"
description: "A potential subscriber initiates discovery by retrieving (GET or HEAD request) the topic to which it wants to subscribe. The HTTP response from the publisher MUST include at least one Link Header with rel=hub (a hub link header) as well as exactly one Link Header with rel=self (the self link header). The former MUST indicate the exact URL of a WebSub hub designated by the publisher."
---

**[W3C TR http://www.w3.org/TR/pubsub: WebSub](/specs/W3C/TR/pubsub "An open, simple, web-scale and decentralized pubsub protocol. Anybody can play. As opposed to more developed (and more complex) pubsub specs like Jabber Publish-Subscribe this spec's base profile (the barrier-to-entry to speak it) is dead simple. The fancy bits required for high-volume publishers and subscribers are optional. The base profile is HTTP-based, as opposed to XMPP (see more on this below). To dramatically simplify this spec in several places where we had to choose between supporting A or B, we took it upon ourselves to say &#34;only A&#34;, rather than making it an implementation decision. We offer this spec in hopes that it fills a need or at least advances the state of the discussion in the pubsub space. Polling is extremely wasteful and high latency. We think a decentralized pubsub layer is a fundamental, missing layer in the Internet architecture today and its existence, more than just enabling the obvious lower latency feed readers, would enable many cool applications, most of which we can't even imagine. But we're looking forward to decentralized social networking."):** [A potential subscriber initiates discovery by retrieving (GET or HEAD request) the topic to which it wants to subscribe. The HTTP response from the publisher MUST include at least one Link Header with rel=hub (a hub link header) as well as exactly one Link Header with rel=self (the self link header). The former MUST indicate the exact URL of a WebSub hub designated by the publisher.](http://www.w3.org/TR/pubsub/#discovery "Read documentation for Link Relation &#34;hub&#34;")

<br/>
<hr/>

<p style="float : left"><a href="./hub.json" title="JSON representing this particular Web Concept value">JSON</a></p>
<p style="text-align: right">Return to list of all ( <a href="../link-relations">Link Relations</a> | <a href="../">Web Concepts</a> )</p>
