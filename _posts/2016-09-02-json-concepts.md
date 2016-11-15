---
layout: post
title:  "JSON Version of Web Concepts"
categories: update
---

In a [recent post "Making Web Concepts and Specs Present As Real Time Help In API Design Tooling", Kin Lane](http://apievangelist.com/2016/09/01/making-web-concepts-and-specs-present-as-real-time-help-in-api-design-tooling/) pointed out that it probably would be useful if [`webconcepts.info`](http://webconcepts.info) were available not only as a web site and the XML sources, but as easily usable JSON.

As a first step towards this goal, [there now is a JSON representation of all concepts](http://webconcepts.info/concepts/concepts.json). There are numerous design options when it comes to what to include and how to structure the JSON, and if you have any feedback about the new JSON representation, [please raise an issue on GitHub](https://github.com/dret/webconcepts/issues). I hope that the JSON format can stabilize relatively quickly. It would be great to get some feedback from developers trying to integrate the JSON into their tooling.

Publishing the JSON for the concepts is a first step. The next step is to do the same for all [specifications](/specs), and that will be made available in the next couple of days. If you have suggestions for that, [please raise an issue on GitHub](https://github.com/dret/webconcepts/issues), and I will use this as input for how to design the JSON.
