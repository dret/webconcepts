---
layout: post
title:  "JSON Refactoring and Additions"
categories: update
---

Based on [feedback from early users](https://github.com/dret/webconcepts/issues/25), the Web Concepts JSON structures have been refactored a bit. The goal was two-fold:

* Make it easier for users to parse and understand the JSON for individual Web Concept values (such as the [404 HTTP Status Code](/concepts/http-status-code/404.json)) when just using that individual JSON representation.
* Come up with a structure that can be used on all levels of detail, so that there also can be JSON for each Web Concept.

Based on this refactoring, it was easy to add individual JSON files for each Web Concept (such as all [HTTP Header Fields](/concepts/http-headers.json)), meaning that for Web Concepts, there are now three levels of JSON available:

* [One large file for all Web Concepts and their values](/concepts/concepts.json)
* Individual files for each Web Concept and its values (e.g., all [HTTP Header Fields](/concepts/http-headers.json))
* Individual files for each Web Concept value (e.g., the [404 HTTP Status Code](/concepts/http-status-code/404.json))

As usual, any feedback about the new structure is very welcome!
