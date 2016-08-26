---
layout: page
title:  "Duplicate Suppression in HTTP"
---

| *Document Name:* | Internet Draft mogul-http-dupsup
| *Document URI:* | `urn:ietf:id:mogul-http-dupsup`
| *Online Version:* | [`http://tools.ietf.org/html/draft-mogul-http-dupsup`](http://tools.ietf.org/html/draft-mogul-http-dupsup)
| *Organization:* | [Internet Engineering Task Force (IETF)](..  "List of specification series by this organization")
| *Series:* | [Internet Draft (I-D)](.  "List of specifications in this series")
| *Abstract:* | A significant fraction of Web content is often exactly duplicated under several different URIs. This duplication can lead to suboptimal use of network bandwidth, and unnecessary latency for users. Much of this duplication can be avoided through the use of a simple mechanism, described here, which allows a cache to efficiently substitute one byte-for-byte identical value for another. By doing so, the cache avoids some or all of the network costs associated with retrieving the duplicate value.

<br/>
<hr/>

## Specified Web Concepts:

### HTTP Header Fields

[`SubOK`](/concepts/http-header/SubOK "The SubOK request header field is used to provide directives from an end-client to a proxy cache regarding the possible substitution of an instance body from a cached response for one resource instance for the instance body of the resource instance specified by the client's request."), [`Subst`](/concepts/http-header/Subst "The Subst response-header field MUST be used by a proxy to supply the URI of the original source of an entity-body, if the source is different from the client's Request-URI, and if the client's request included the &#34;inform&#34; directive in a SubOK request header field.")



<br/>
<hr/>

<p style="text-align: right">Return to ( <a href="./">Series</a> | <a href="../">Organization</a> | <a href="../../">all Specifications</a> )</p>