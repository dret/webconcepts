---
layout: post
title:  "Hackable Concept URIs"
categories: update
---

As suggested in [Github Issue #25](https://github.com/dret/webconcepts/issues/25) a little while ago, it is useful to have hackable URIs. So far, the pattern of URIs for concepts and individual values was as follows:

* `http://webconcepts.info/concepts/http-methods` (notice the plural)
* `http://webconcepts.info/concepts/http-method/GET`

While this made some sense, it also meant that URIs were not hackable, i.e. you could not simply take `http://webconcepts.info/concepts/http-method/GET`, remove the value `GET`, and retrieve the list of all HTTP methods.

As of today, this has changed. The new URI patterns look as follows:

* [`http://webconcepts.info/concepts/http-method/`](http://webconcepts.info/concepts/http-method/)
* [`http://webconcepts.info/concepts/http-method/GET`](http://webconcepts.info/concepts/http-method/GET)

If you only use the Web site, this change only means that you'll be navigating different URIs; all of the navigation remains the same.

If you have been using JSON data (of [all concepts](http://webconcepts.info/concepts.json), [one concept](http://webconcepts.info/concepts/http-method.json), or [one value](http://webconcepts.info/concepts/http-method/GET.json)), then both the content of the JSON has changed (as per the changes mentioned above: new URIs for concepts and values), as well as the URIs of the JSON (for the per-concept and per-value JSON). The new JSON URI patterns are as follows:

* [`http://webconcepts.info/concepts/http-method.json`](http://webconcepts.info/concepts/http-method.json)
* [`http://webconcepts.info/concepts/http-method/GET.json`](http://webconcepts.info/concepts/http-method/GET.json)

Sincere apologies to everybody affected by this change! I will try to keep those URIs stable in the future. One possible exception: While things get changed around, it also might be appropriate to [move the site and all URIs from HTTP to HTTPS? Any feedback about this would be greatly appreciated!](https://github.com/dret/webconcepts/issues/34).
