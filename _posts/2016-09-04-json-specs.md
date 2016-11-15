---
layout: post
title:  "JSON Version of Web Concept Specifications"
categories: update
---

As promised, the JSONification of [`webconcepts.info`](http://webconcepts.info) continues: [Kin Lane's post about "Making Web Concepts and Specs Present As Real Time Help In API Design Tooling"](http://apievangelist.com/2016/09/01/making-web-concepts-and-specs-present-as-real-time-help-in-api-design-tooling/) proposed JSON versions of concepts and specs. As a first step towards this goal, [a JSON representation of all concepts](http://webconcepts.info/concepts/concepts.json) was published recently.

Starting today there also is a [a JSON representation of all specifications](http://webconcepts.info/specs/specs.json). It connects to the concepts JSON via identifiers, so that each of these files can be used standalone, or can be easily combined with the other one.

As with the concepts JSON, the specifications JSON is a first proposal. If there is anything you would like to see changed, [please raise an issue on GitHub](https://github.com/dret/webconcepts/issues). I hope that the JSON format can stabilize relatively quickly. It would be great to get some feedback from developers trying to integrate the available JSON representations into their tooling.
