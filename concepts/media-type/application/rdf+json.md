---
layout:        concept
permalink:     "/concepts/media-type/application/rdf+json"
title:         "Media Type: application/rdf+json"
concept-name:  Media Type
concept-value: application/rdf+json
description: "An RDF Graph consists of a set of RDF triples, each triple consisting of a subject, a predicate and an object. An RDF/JSON document serializes such a set of RDF triples as a series of nested data structures. A conforming RDF/JSON document consists of a single JSON object called the root object. Each unique subject in the set of triples is represented as a key in the root object. No key may appear more than once in the root object. The value of each root object key is a further JSON object whose keys are the URIs of the predicates occurring in triples with the given subject. These keys are known as predicate keys. No predicate key may appear more than once within a single object. The value of each predicate key is an array of JSON objects representing the object of each serialized triple."
---

[An RDF Graph consists of a set of RDF triples, each triple consisting of a subject, a predicate and an object. An RDF/JSON document serializes such a set of RDF triples as a series of nested data structures. A conforming RDF/JSON document consists of a single JSON object called the root object. Each unique subject in the set of triples is represented as a key in the root object. No key may appear more than once in the root object. The value of each root object key is a further JSON object whose keys are the URIs of the predicates occurring in triples with the given subject. These keys are known as predicate keys. No predicate key may appear more than once within a single object. The value of each predicate key is an array of JSON objects representing the object of each serialized triple.](https://www.w3.org/TR/rdf-json/#overview-of-rdf-json "Read documentation for Media Type &#34;application/rdf+json&#34;") (**[W3C TR http://www.w3.org/TR/json-rdf: RDF 1.1 JSON Alternate Serialization (RDF/JSON)](/specs/W3C/TR/json-rdf "The Resource Description Framework (RDF) is a framework for representing information in the Web. This document defines a textual syntax for RDF called RDF/JSON that allows an RDF graph to be completely written in a form compatible with the JavaScript Object Notation (JSON) and alternative to the one recommended in JSON-LD. The syntax defined in this document should not be used unless there is a specific reason to do so. Use of JSON-LD is recommended.")**)

<br/>
<hr/>

<p style="float : left"><a href="./application/rdf+json.json" title="JSON representing this particular Web Concept value">JSON</a></p>
<p style="text-align: right">Return to list of all ( <a href="../media-type/">Media Types</a> | <a href="../">Web Concepts</a> )</p>
