---
layout:    page
title:     "HTTP Preferences"
permalink: /concepts/http-preference/
---



The following 5 HTTP Preference values were found in [all available `webconcepts.info` specifications](/specs). Please be advised that the table shown here is maintained and compiled from [Web Concepts](/) sources. The [official HTTP Preference registry](http://www.iana.org/assignments/http-parameters/http-parameters.xhtml#preferences) is maintained by the [*Internet Assigned Numbers Authority (IANA)*](http://www.iana.org/).

HTTP Preference | Specification
-------: | :-------
[`handling`](/concepts/http-preference/handling "The &#34;handling=strict&#34; and &#34;handling=lenient&#34; preferences indicate, at the server's discretion, how the client wishes the server to handle potential error conditions that can arise in the processing of a request.") | [**RFC 7240**: Prefer Header for HTTP](/specs/IETF/RFC/7240 "This specification defines an HTTP header field that can be used by a client to request that certain behaviors be employed by a server while processing a request.")
[`respond-async`](/concepts/http-preference/respond-async "The &#34;respond-async&#34; preference indicates that the client prefers the server to respond asynchronously to a response.") | [**RFC 7240**: Prefer Header for HTTP](/specs/IETF/RFC/7240 "This specification defines an HTTP header field that can be used by a client to request that certain behaviors be employed by a server while processing a request.")
[`return`](/concepts/http-preference/return "The &#34;return=representation&#34; preference indicates that the client prefers that the server include an entity representing the current state of the resource in the response to a successful request. The &#34;return=minimal&#34; preference, on the other hand, indicates that the client wishes the server to return only a minimal response to a successful request.") | [**RFC 7240**: Prefer Header for HTTP](/specs/IETF/RFC/7240 "This specification defines an HTTP header field that can be used by a client to request that certain behaviors be employed by a server while processing a request.")
[`safe`](/concepts/http-preference/safe "When present in a request, the safe preference indicates that the user prefers that the origin server not respond with content that is designated as objectionable, according to the origin server's definition of the concept.") | [**RFC 8674**: The "safe" HTTP Preference](/specs/IETF/RFC/8674 "This specification defines a preference for HTTP requests that expresses a desire to avoid objectionable content, according to the definition of that term by the origin server. This specification does not define a precise semantic for &#34;safe&#34;. Rather, the term is interpreted by the server and within the scope of each web site that chooses to act upon this information. Support for this preference by clients and servers is optional.")
[`wait`](/concepts/http-preference/wait "The &#34;wait&#34; preference can be used to establish an upper bound on the length of time, in seconds, the client expects it will take the server to process the request once it has been received.") | [**RFC 7240**: Prefer Header for HTTP](/specs/IETF/RFC/7240 "This specification defines an HTTP header field that can be used by a client to request that certain behaviors be employed by a server while processing a request.")

<br/>
<hr/>

<p style="float : left"><a href="../http-preference.json" title="JSON representing all values for this Web Concept">JSON</a></p>
