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

The following JSON snippet shows one part of [the *HTTP Method* concept](/concepts/http-method.json). All but the HTTP `GET` method have been removed in this example.

```json
{ "concept": "http-method",
  "id": "http://webconcepts.info/concepts/http-method/",
  "name-singular": "HTTP Request Method",
  "name-plural": "HTTP Request Methods",
  "registry": "http://www.iana.org/assignments/http-methods/http-methods.xhtml#methods",
  "values": [
    { "value": "GET",
      "concept": "http://webconcepts.info/concepts/http-method/",
      "id": "http://webconcepts.info/concepts/http-method/GET",
      "details": [
      { "description": "The GET method ...",
        "documentation": "http://tools.ietf.org/html/rfc7231#section-4.3.1",
        "specification": "http://webconcepts.info/specs/IETF/RFC/7231",
        "spec-name": "RFC 7231" }]}]}
```

For the top-level object describing the concept, the structure is rather simple:

* `concept` is the concept's name as it is referred to in the sourec data.
* `id` is the concept identifier (a URI) which is can be used as a URI in a browser, and is also used to identify the concept in JSON data.
* `name-singular` is the singular version of the concept's human-readable name.
* `name-plural` is the plural version of the concept's human-readable name.
* `registry` (optional) identifies a registry of all well-known values, if such a registry exists.
* `values` is an array of all known values for the concept.

For each value, the concept JSON contains a JSON object that is either embedded (as shown here), or is also available [as a standalone JSON document](/concepts/http-method/GET.json) as described above. The concept value object uses the following structure:

* `value` is the concept value itself.
* `concept` is the identifier of the concept that the value is defined for.
* `id` is the value identifier (a URI) which is can be used as a URI in a browser, and is also used to identify the value in JSON data.
* `details` is an array of all known descriptions of the value.

Within the `details` array, the following structure is used:

* `description` is a human-readable text snippet describing the concept value.
* `documentation` is a URI identifying the documentation where the concept value is defined.
* `specification` is the identifier of the specification from which the definition and documentation have been harvested.
* `spec-name` is a short human-readable name for the specification that can be used when linking to the documentation.

There can be more than one value in the `details` array, [see here for a discussion of why there can be more than one description/definition](https://github.com/dret/webconcepts/issues/28). There currently is no way to determine the "best" or "most authoritative" one, so applications ideally should render all of them.
