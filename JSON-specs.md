---
title: "Web Concepts in JSON: Specification Data"
layout:    default
permalink: /JSON-specs
---

# Web Concepts in JSON: Specification Data

The current specification model of Web Concepts is based on the assumption that specifications have an *organization* behind them, and that organizations publish *specification series*. This model is defined in the [XML configuration file for specifications](/specs/specs.xml), which defines the supported organizations (in the `<primary>` elements) and their series (in the embedded `<secondary>` elements).

In the JSON document structure, specifications are grouped by *organization* on the top level, and by *specification series* on the second level. Underneath that second level, individual specifications are listed.


## JSON Document Structure

The following JSON snippet shows one part of [the complete JSON representation for specifications](/specs/specs.json). Everything but the [IETF RFC 2648 specification](/specs/IETF/RFC/2648) has been removed in this example.

```json
{ "IETF":
  { "id":    "http://webconcepts.info/specs/IETF/",
    "name":  "Internet Engineering Task Force",
    "short": "IETF",
    "series": [
      { "RFC":
        { "id":    "http://webconcepts.info/specs/IETF/RFC/",
          "name":  "Request for Comments",
          "short": "RFC",
          "specs": [
            { "2648":
              { "id":       "http://webconcepts.info/specs/IETF/RFC/2648",
                "title":    "A URN Namespace for IETF Documents",
                "name":     "RFC 2648",
                "URI":      "urn:ietf:rfc:2648",
                "URL":      "http://tools.ietf.org/html/rfc2648",
                "abstract": "A system for Uniform Resource Names (URNs) ...",
                "concepts": [
                { "http://webconcepts.info/concepts/urn-namespace": "http://webconcepts.info/concepts/urn-namespace/ietf" }]}}]}}]}}
```

This JSON structure groups specification by organization first, and by specification series second. At the top level, there is the organization identifier, which is part of the Web Concepts URI of the organization, such as [<code>http://webconcepts.info/specs/<b>IETF</b>/</code>](http://webconcepts.info/specs/IETF/). The structure describing an organization has few members:

* `id` is the organization identifier (a URI) which can be used as a URI in a browser, and is also used to identify the value in JSON data.
* `name`
* `short`
* `series`

* `id` is the specification series identifier (a URI) which can be used as a URI in a browser, and is also used to identify the value in JSON data.
* `name`
* `short`
* `specs`

* `id` is the specification identifier (a URI) which can be used as a URI in a browser, and is also used to identify the value in JSON data.
