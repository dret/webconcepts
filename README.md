# Service Documentation Language (Sedola)

The goal of the Service Documentation Language (Sedola) is to allow the description of REST services, focusing on those facets of the services that matter from the REST point of view, such as media types, link relations, and HTTP headers.

One way of describing what Sedola is about is the "Web Surface" of services. The "Web Surface" are those aspects of a service that are exposed through aspects of Web architecture which are embodied through the standards and technologies that a service is based on.

Since many REST services are reusing existing specifications, it makes sense to make the description of those specifications available in reusable form. There are already many [W3C](W3C/) and [IETF](IETF/) (with [RFC](IETF/RFC/) as well as [I-D](IETF/I-D) documents) [specifications available](MD/specs.md), and this collection is growing continually.

The ultimate goal of Sedola is to be able to describe services in terms of dependencies of existing concepts, how they combine them, and what they add to them. For example when looking at [AtomPub](IETF/RFC/5023.xml), it depends on [Atom](IETF/RFC/4287.xml), and then adds new concepts such as an HTTP header field, media types, and link relations.

