---
layout:    default
permalink: /JSON
---

# JSON Documentation

*Web Concetps* data is available as JSON, and in a variety of ways. All JSON data is generated from the source data, which is managed [as a set of XML descriptions of specifications](https://github.com/dret/webconcepts/tree/gh-pages/specs/src). When the site gets refreshed, two main JSON files are generated:

* [`specs.json`](/specs/specs.json) is a structured representation of all specifications that were found in the source data. They are grouped by organization first and specification series second, as [defined in the specification configuration file](/specs/specs.xml) and [shown on the specifications page](specs/).

* [`concepts.json`](/concepts.json) is a structured representation of all concepts that were found in the source data. They are grouped by concepts, as [defined in the concept configuration file](/concepts.xml) and [shown on the concepts page](/concepts)
