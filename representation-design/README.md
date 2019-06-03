# Web Concepts Representation Design

This space is reserved for discussing the design of a *Web Concepts Representation", which is supposed to represent the Web Concepts that a single API is using. The use case is that this representation should allow APIs to list all the Web Concepts that they are using.

[Please read the blog post announcing the representation design effort](http://webconcepts.info/update/2019/06/03/web-concepts-representation.html) as a starting point. This page will start deviating from the initial design as soon as first design discussions take place. Please [use the Web Concepts issue tracker](https://github.com/dret/webconcepts/issues) for participating in design discussions.


## General Design idea

One of the core ideas is that Web Concepts should be open and extensible. This means that while there is [a list of concepts maintained by Web Concepts itself](http://webconcepts.info/concepts/), it should be possible for users to add their own concepts.


## Format Design

The format is JSON-based and exposes an array with each concept value as an object that has the two members `concept` and `value`:

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
]
```
