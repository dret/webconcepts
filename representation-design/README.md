# Web Concepts Representation Design

This space is reserved for discussing the design of a *Web Concepts Representation", which is supposed to represent the Web Concepts that a single API is using. The use case is that this representation should allow APIs to list all the Web Concepts that they are using.

[Please read the blog post announcing the representation design effort](http://webconcepts.info/update/2019/06/03/web-concepts-representation.html) as a starting point. This page will start deviating from the initial design as soon as first design discussions take place. Please [use the Web Concepts issue tracker](https://github.com/dret/webconcepts/issues) for participating in design discussions.


## General Design idea

One of the core ideas is that Web Concepts should be open and extensible. This means that while there is [a list of concepts maintained by Web Concepts itself](http://webconcepts.info/concepts/), it should be possible for users to add their own concepts.

For this to work easily, the representation mirrors the *Web Linking* specification, distinguishing between *regular strings* that refer to well-known concepts (those [defined at Web Concepts](http://webconcepts.info/concepts/), such as [`http-header`](http://webconcepts.info/http-header/)), and *URIs* which are extension concepts that anybody can add. It is recommended that these URIs resolve to useful documentation (in the same way as `http://webconcepts.info/http-header/` resolves to a description of the "HTTP header field" concept), so that anybody encountering extension concept has a chance to figure out what they mean.

This means that in the representation, Web Concepts are identified by values that are either a *regular string* or a *URI*. In both cases, the value identifies a Web Concept, but while in the former case (regular string) it is a "registered concept", in the latter case (URI) it is an "extension concept".


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
