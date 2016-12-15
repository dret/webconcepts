---
layout:    default
permalink: /JSON
---

# JSON Documentation

*Web Concepts* data is available as JSON. All JSON data is generated from the source data, which is managed [as a set of XML descriptions of specifications](https://github.com/dret/webconcepts/tree/gh-pages/specs/src). This page documents where to find JSON documents, and how they are structured.


## JSON Document Locations

There are two major JSON files that represent two "perspectives" of the same data, one from the specification angle, and the other from the concept angle:

* [`specs.json`](/specs/specs.json) is a structured representation of all specifications that were found in the source data. They are grouped by organization first and specification series second, as [defined in the specification configuration file](/specs/specs.xml) and [shown on the specifications page](specs/).

* [`concepts.json`](/concepts.json) is a structured representation of all concepts that were found in the source data. They are grouped by concepts, as [defined in the concept configuration file](/concepts.xml) and [shown on the concepts page](/concepts)

For each concept, there also is JSON data just for that concept, and there also is individual JSON data for each individual concept value. These JSON representations are linked from the concept pages, and from the concept value pages. They follow this pattern:

* [<code>/concepts/<b>http-method</b>.json</code>](/concepts/http-method.json) is the pattern for JSON data for [individual concepts](/concepts/http-method/). This JSON contains representations of all values for a specific concept.
* [<code>/concepts/http-method/<b>GET</b>.json</code>](/concepts/http-method/GET.json) is the pattern for JSON data for [individual concept values](/concepts/http-method/GET). This JSON contains representations of a single value for a concept.


## JSON Document Structure

```javascript
{ "concept": "http-method",
  "id": "http://webconcepts.info/concepts/http-method/",
  "name-singular": "HTTP Request Method",
  "name-plural": "HTTP Request Methods",
  "values": [
    {
      "value": "GET",
      "concept": "http://webconcepts.info/concepts/http-method/",
      "id": "http://webconcepts.info/concepts/http-method/GET",
      "details": [{
        "description": "The GET method requests transfer of a current selected representation for the target resource. GET is the primary mechanism of information retrieval and the focus of almost all performance optimizations. Hence, when people speak of retrieving some identifiable information via HTTP, they are generally referring to making a GET request.",
        "documentation": "http://tools.ietf.org/html/rfc7231#section-4.3.1",
        "specification": "http://webconcepts.info/specs/IETF/RFC/7231" }]}]}
```
