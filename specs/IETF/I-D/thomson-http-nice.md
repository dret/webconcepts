---
layout: page
title:  "Marking HTTP Requests as Unimportant"
---

| Canonical Name | Internet Draft thomson-http-nice
| Online Version | [`http://tools.ietf.org/html/draft-thomson-http-nice`](http://tools.ietf.org/html/draft-thomson-http-nice)
| Organization | [Internet Engineering Task Force (IETF)](..)
| Series | [Internet Draft (I-D)](..)
| Abstract | An HTTP "Nice" header field is defined that marks a request as low priority. Intermediaries can choose to discard the request or serve it from cache rather than forwarding it to an origin server. This enables constrained origin servers, such as those that rely on battery power, to avoid expending limited resources on serving requests.