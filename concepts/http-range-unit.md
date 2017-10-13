---
layout:    page
title:     "HTTP Range Units"
permalink: /concepts/http-range-unit/
---



The following 3 HTTP Range Unit values were found in [all available `webconcepts.info` specifications](/specs). Please be advised that the table shown here is maintained and compiled from [Web Concepts](/) sources. The [official HTTP Range Unit registry](http://www.iana.org/assignments/http-parameters/http-parameters.xhtml#range-units) is maintained by the [*Internet Assigned Numbers Authority (IANA)*](http://www.iana.org/).

HTTP Range Unit | Specification
-------: | :-------
[`bytes`](/concepts/http-range-unit/bytes "Since representation data is transferred in payloads as a sequence of octets, a byte range is a meaningful substructure for any representation transferable over HTTP. The &#34;bytes&#34; range unit is defined for expressing subranges of the data's octet sequence.") | [**RFC 7233**: Hypertext Transfer Protocol (HTTP/1.1): Range Requests](/specs/IETF/RFC/7233 "The Hypertext Transfer Protocol (HTTP) is an application-level protocol for distributed, collaborative, hypertext information systems. This document defines range requests and the rules for constructing and combining responses to those requests.")
[`bytes-live`](/concepts/http-range-unit/bytes-live "As with the &#34;bytes&#34; range unit, a &#34;bytes-live&#34; Range request allows a client to designate a subset of bytes from the representation data to be transferred in payloads as a sequence of octets. But the form of a &#34;bytes-live&#34; request is focused on accessing data that may be appended to the representation over time.") | [**Internet Draft pratt-httpbis-bytes-live-range-unit**: HTTP bytes-live Range Unit for Live Content](/specs/IETF/I-D/pratt-httpbis-bytes-live-range-unit "To accommodate byte range requests for content that has data appended over time, this document defines a new HTTP range unit named &#34;bytes-live&#34;. The &#34;bytes-live&#34; range unit provides the ability for a client to specify a byte range in a GET or HEAD request which starts at an arbitrary byte offset within the representation and ends at an indeterminate offset, represented by &#34;*&#34;.")
[`none`](/concepts/http-range-unit/none "A server that does not support any kind of range request for the target resource MAY send &#34;Accept-Ranges: none&#34; to advise the client not to attempt a range request.") | [**RFC 7233**: Hypertext Transfer Protocol (HTTP/1.1): Range Requests](/specs/IETF/RFC/7233 "The Hypertext Transfer Protocol (HTTP) is an application-level protocol for distributed, collaborative, hypertext information systems. This document defines range requests and the rules for constructing and combining responses to those requests.")

<br/>
<hr/>

<p style="float : left"><a href="../http-range-unit.json" title="JSON representing all values for this Web Concept">JSON</a></p>
