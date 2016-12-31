---
title: "Web Concepts in JSON"
layout:    default
permalink: /JSON
---

# Web Concepts in JSON

*Web Concepts* data is available as JSON. All JSON data is generated from the source data, which is managed [as a set of XML descriptions of specifications](https://github.com/dret/webconcepts/tree/gh-pages/specs/src). This page documents where to find JSON documents, and how they are structured.


## JSON Document Locations

There are two major JSON files that represent two "perspectives" of the same data, one from the specification angle, and the other from the concept angle:

* [`specs.json`](/specs/specs.json) is a structured representation of all specifications that were found in the source data. They are grouped by organization first and specification series second, as [defined in the specification configuration file](/specs/specs.xml) and [shown on the specifications page](specs/).

* [`concepts.json`](/concepts.json) is a structured representation of all concepts that were found in the source data. They are grouped by concepts, as [defined in the concept configuration file](/concepts.xml) and [shown on the concepts page](/concepts)

Both JSON representations are interlinked through URI identifiers. Depending on your needs, you can start from either one and then traverse to the other one. In order to make data available in more manageable slices, if required, the concept JSON representation is not only available as one big JSON document, but also in smaller slices. Find out more about both JSON representations in the

* [documentation of specification data in JSON](JSON-specs) and the
* [documentation of concept data in JSON](JSON-concepts).
