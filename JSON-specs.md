---
title: "Web Concepts in JSON: Specification Data"
layout:    default
permalink: /JSON-specs
---

# Web Concepts in JSON: Specification Data


## JSON Document Structure

The following JSON snippet shows one part of [the *HTTP Method* concept](/concepts/http-method.json). All but the HTTP `GET` method have been removed in this example.

```json
{ "IETF":
  { "id": "http://webconcepts.info/specs/IETF/",
    "name": "Internet Engineering Task Force",
    "short": "IETF",
    "series": [
      { "RFC": {
        "id": "http://webconcepts.info/specs/IETF/RFC/",
        "name": "Request for Comments",
        "short": "RFC",
        "specs": [
          { "2648": {
            "id": "http://webconcepts.info/specs/IETF/RFC/2648",
            "title": "A URN Namespace for IETF Documents",
            "name": "RFC 2648",
            "URI": "urn:ietf:rfc:2648",
            "URL": "http://tools.ietf.org/html/rfc2648",
            "abstract": "A system for Uniform Resource Names (URNs) ...",
            "concepts": [
              { "urn-namespace": "ietf"}]}}]}}]}}
```
