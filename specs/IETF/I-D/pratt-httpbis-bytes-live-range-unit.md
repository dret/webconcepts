---
layout: page
title:  "HTTP bytes-live Range Unit for Live Content"
---

| *Canonical Name* | Internet Draft pratt-httpbis-bytes-live-range-unit
| *Online Version* | [`http://tools.ietf.org/html/draft-pratt-httpbis-bytes-live-range-unit`](http://tools.ietf.org/html/draft-pratt-httpbis-bytes-live-range-unit)
| *Organization* | [Internet Engineering Task Force (IETF)](..  "List of specification series by this organization")
| *Series* | [Internet Draft (I-D)](.  "List of specifications in this series")
| *Abstract* | To accommodate byte range requests for content that has data appended over time, this document defines a new HTTP range unit named "bytes-live". The "bytes-live" range unit provides the ability for a client to specify a byte range in a GET or HEAD request which starts at an arbitrary byte offset within the representation and ends at an indeterminate offset, represented by "*".

<br/>
<hr/>

## Specified Web Concepts:

### HTTP Range Units

[`bytes-live`](/concepts/http-range-unit/bytes-live "As with the &#34;bytes&#34; range unit, a &#34;bytes-live&#34; Range request allows a client to designate a subset of bytes from the representation data to be transferred in payloads as a sequence of octets. But the form of a &#34;bytes-live&#34; request is focused on accessing data that may be appended to the representation over time.")



<br/>
<hr/>

<p style="text-align: right">Return to ( <a href="./">Series</a> | <a href="../">Organization</a> | <a href="../../">all Specifications</a> )</p>