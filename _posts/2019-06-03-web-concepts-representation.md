---
layout: post
title:  "Wanted: Web Concepts Representation"
categories: update
---

*Web Concepts* have been around for a while, and the collection of concepts is growing at a constant rate. One of the visions of Web Concepts is not just to serve as a starting point, but to also serve as a foundations for how APIs can describe the concepts they are using. If you look at Web Concepts as building blocks which can be used to design APIs, then such a description would be akin to listing the building blocks that went into the specific design of an API.

On the one hand, this could be a useful starting point for better describing the "building blocks" of APIs, so that in the context of large API landscapes, it becomes easier to understand the usage of building blocks across APIs. On the other hand, such a representation would be one piece of the general idea of "API the APIs", which states that information *about an API* should be made available *as part of the API*. While service descriptions such as OpenAPI are useful for describing the service from the functional perspective of somebody wanting to understand *what the service can do*, the representation of an API's Web Concepts would be more focusing on the architectural perspective of *what building blocks went into the design of the service*.

Web Concepts always has been open and based on community feedback. The design of the "Web Concepts Representation" should be no different. This blog post is supposed to kick off a design discussion. An [initial proposal for the representation design is available in the GitHub repo](https://github.com/dret/webconcepts/representation-design). Please use this page (and the related GitHub issue tracker) for contributing.

In summary, the proposal is very simple. The format is JSON-based and exposes an array with each concept value as an object that has the two members `concept` and `value`:

```JSON
[
  {
    "concept": "http-method",
    "value": "GET"
  },
  {
    "concept": "http-header",
    "value": "Host"
  },
  {
    "concept": "http-status-code",
    "value": "200"
  },
  {
    "concept": "http-header",
    "value": "Content-Type"
  },
  {
    "concept": "media-type",
    "value": "application/json"
  }
]```

The `concept` is identified by its identifier in Web Concepts, which is a design that is already used in the [design for the JSON representation of all Web Concepts data](http://webconcepts.info/JSON). The `value` is the value of the specific concept, and once again this reuses the [design for the JSON representation of all Web Concepts data](http://webconcepts.info/JSON).

