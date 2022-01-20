---
layout:        concept
permalink:     "/concepts/media-type/application/webpush-options+json"
title:         "Media Type: application/webpush-options+json"
concept-name:  Media Type
concept-value: application/webpush-options+json
description: "The user agent includes the public key of the application server when requesting the creation of a push subscription. The public key is then added to the request to create a push subscription. The push subscription request is extended to include a body. The body of the request is a JSON object. A \"vapid\" member is added to this JSON object, containing the public key on the P-256 curve, encoded in the uncompressed form and base64url encoded."
---

[The user agent includes the public key of the application server when requesting the creation of a push subscription. The public key is then added to the request to create a push subscription. The push subscription request is extended to include a body. The body of the request is a JSON object. A "vapid" member is added to this JSON object, containing the public key on the P-256 curve, encoded in the uncompressed form and base64url encoded.](https://datatracker.ietf.org/doc/html/draft-ietf-webpush-vapid#section-4 "Read documentation for Media Type &#34;application/webpush-options+json&#34;") (**[Internet Draft ietf-webpush-vapid: Voluntary Application Server Identification (VAPID) for Web Push](/specs/IETF/I-D/ietf-webpush-vapid "An application server can use the method described to voluntarily identify itself to a push service. This identification information can be used by the push service to attribute requests that are made by the same application server to a single entity. An application server can include additional information that the operator of a push service can use to contact the operator of the application server. This identification information can be used to restrict the use of a push subscription a single application server.")**)

<br/>
<hr/>

<p style="float : left"><a href="./application/webpush-options+json.json" title="JSON representing this particular Web Concept value">JSON</a></p>
<p style="text-align: right">Return to list of all ( <a href="../media-type/">Media Types</a> | <a href="../">Web Concepts</a> )</p>
