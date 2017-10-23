---
layout: post
title:  "Adding XML Namespaces and Schemas"
categories: update
---

Web Concepts is growing again! [RFC 3688](https://tools.ietf.org/html/rfc3688) establishes the [IETF XML Registry](https://www.iana.org/assignments/xml-registry/xml-registry.xhtml). While the RFC does identify four concepts ([DTDs](https://www.iana.org/assignments/xml-registry/xml-registry.xhtml#publicid), [namespaces](https://www.iana.org/assignments/xml-registry/xml-registry.xhtml#ns), [schemas](https://www.iana.org/assignments/xml-registry/xml-registry.xhtml#schema), and [RDF schemas](https://www.iana.org/assignments/xml-registry/xml-registry.xhtml#rdfschema)), it seems that only two of these ended up being used (namespaces and schemas).

If you're not using any XML in your APIs, these concepts may not be very interesting for you. However, chances are that in any bigger API landscape there will be some XML-based services, and these very well may use XML namespaces and/or schemas.

Therefore, the newest addition to the growing collection of [`webconcepts.info` concepts](/concepts/) are [*XML namespaces*](/concepts/xml-ns/) and [*XML schemas*](/concepts/xml-schema/) (which takes the total count of concepts to 32). Reflecting the complete IANA registries will take some time and effort (they have about 300 entries combined), but if you have any entries you'd specifically like to see, [please raise an issue](https://github.com/dret/webconcepts/issues). As usual, [`webconcepts.info`](/) is not supposed to *only* reflect the official IANA registry, meaning that any other useful namespace or schema identifiers should and will be added as well.

In addition to standardized XML namespaces and schemas (IETF or not), the new concepts could and should be used for keeping track of *your own namespaces and schemas*. [As discussed recently](/update/2017/09/18/anniversary.html), the vision for Web Concepts is to be able to easily fork the site and remove and add your own concepts and values, so that you can easily manage your own specific set of Web Concepts that matter to you are your organization.

As usual, feedback is greatly appreciated, in particular if you are using XML namespaces and/or schemas and want to see some standards added, or are wondering about how to manage your own namespaces/schemas.
