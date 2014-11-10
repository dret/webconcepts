Service Documentation Language (Sedola)
=======================================

Work in progress, with the ultimate goal being a language that allows the description of REST services, focusing on those facets of the services that matter from the REST point of view, such as media types, link relations, and HTTP headers.

Since many REST services are reusing existing specifications, it makes sense to make the description of those specifications available in reusable form. For now, there are some [W3C](W3C/) and [IETF](IETF/) (with [RFC](IETF/RFC/) as well as [I-D](IETF/I-D) documents) specifications available, and this collection is expected to grow continually.

The final goal of Sedola is to be able to describe services in terms of dependencies of existing concepts, how they combine them, and what they add to them. For example when looking at [AtomPub](IETF/RFC/5023.xml), it depends on [Atom](IETF/RFC/4287.xml), and then adds new concepts such as an HTTP header field, media types, and link relations.