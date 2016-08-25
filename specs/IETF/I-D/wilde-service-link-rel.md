---
layout: page
title:  "Link Relation Types for Web Services"
---

| *Document Name:* | Internet Draft wilde-service-link-rel
| *Document URI:* | `urn:ietf:id:wilde-service-link-rel`
| *Online Version:* | [`http://tools.ietf.org/html/draft-wilde-service-link-rel`](http://tools.ietf.org/html/draft-wilde-service-link-rel)
| *Organization:* | [Internet Engineering Task Force (IETF)](..  "List of specification series by this organization")
| *Series:* | [Internet Draft (I-D)](.  "List of specifications in this series")
| *Abstract:* | Many resources provided on the Web are part of sets of resources that are provided in a context that is managed by one particular service provider. Often, these sets of resources are referred to as "Web Services" or "Web APIs". This specification defines link relations for representing relationships from those resources to ones that provide documentation or descriptions of the Web services. The difference between these concepts is that documentation is primarily intended for human consumers, whereas descriptions are primarily intended for automated consumers. It also defines a link relation to identify a status resource that is used to represent operational information about a service's status.

<br/>
<hr/>

## Specified Web Concepts:

### Link Relations

[`service-desc`](/concepts/link-relation/service-desc "The &#34;service-desc&#34; link relation type is used to represent the fact that a resource is part of a bigger set of resources that are described at a specific URI. The target resource is expected to provide a service description that is intended for machine consumption. Very often, it is provided in a format that is consumed by tools, code libraries, or similar components."), [`service-doc`](/concepts/link-relation/service-doc "The &#34;service-doc&#34; link relation type is used to represent the fact that a resource is part of a bigger set of resources that are documented at a specific URI. The target resource is expected to provide documentation that is intended for human consumption."), [`status`](/concepts/link-relation/status "The &#34;status&#34; link relation type can be used to link to such a status resource, allowing service consumers to retrieve status information about a Web service's status. Such a link may not be available from all resources provided by a Web service, but from key resources such as a Web service's home resource.")



<br/>
<hr/>

<p style="text-align: right">Return to ( <a href="./">Series</a> | <a href="../">Organization</a> | <a href="../../">all Specifications</a> )</p>