---
layout: post
title:  "Identifiers for Web Concepts"
categories: update
---

It's great to see that Web Concepts is gaining some traction. This means that it is about time to decide how these concepts  should be identified (what is their "Internet/Web Identity"?).

[GitHub Issue #24](https://github.com/dret/webconcepts/issues/24) raises this question and it would be great to get some feedback about this. The issue outlines three general design options:

* A simple non-URI identifier such as `http-method:GET`
* A dereferencable URI such as `http://webconcepts.info/concepts/http-method/GET`
* A non-dereferencable URI such as `urn:webconcept:http-method:GET`

The first option looks nice and simple but it may be a bit too simplistic and brittle.

The second option is nice because it makes the concept identifiers dereferencable, but on the other hand it means that whoever owns `webconcepts.info` (at the moment that's myself) owns the identity of the concepts.

The third option looks cleanest but URN namespaces are not so much in fashion right now, regardless of how good of an idea it might seem to decouple identification and location.

There also is the interesting question (for all three approaches) how the "concept namespace" is handled. Right now, the concepts are [the list that is available on the Web site](http://webconcepts.info/concepts/). That list will probably grow. Maybe it should be able to grow without a central authority "owning" that namespace? One possibility would be to turn that list into a registry that has the 16 current concepts as initial entries. Then anybody adding concepts that they feel are useful could do so by adding new entries to the registry, and it could be one requirement when adding such an entry that a description of the concept and the list of possible values would be openly available. Is that too complicated? It feels like the right thing to do, and would allow organic growth of the Web Concept space, but then again it may be over-engineering things a bit?

One thing that got me thinking in that direction was [Erik Azar](https://twitter.com/eazar)'s hackathon project [at RESTfest](/update/2016/09/16/RESTfest-launch.html) where [he added OWASP as a Web Concept](https://github.com/dret/webconcepts/tree/OWASP). For RESTfest we simply added this new Web Concept to the main repository, but it would be great if these kinds of extensions could be easily done in a decentralized way, but would still be discoverable through a registry. Any thoughts on that kind of extensibility of the Web Concepts space?
