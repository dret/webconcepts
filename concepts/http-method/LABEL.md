---
layout: page
title:  "HTTP Request Method: LABEL"
---

[**RFC 3253**: Versioning Extensions to WebDAV (Web Distributed Authoring and Versioning)](/specs/IETF/RFC/3253 "This document specifies a set of methods, headers, and resource types that define the WebDAV (Web Distributed Authoring and Versioning) versioning extensions to the HTTP/1.1 protocol. WebDAV versioning will minimize the complexity of clients that are capable of interoperating with a variety of versioning repository managers, to facilitate widespread deployment of applications capable of utilizing the WebDAV Versioning services. WebDAV versioning includes automatic versioning for versioning-unaware clients, version history management, workspace management, baseline management, activity management, and URL namespace versioning."): [A LABEL request can be applied to a version to modify the labels that select that version. The case of a label name MUST be preserved when it is stored and retrieved. When comparing two label names to decide if they match or not, a server SHOULD use a case-sensitive URL-escaped UTF-8 encoded comparison of the two label names.](http://tools.ietf.org/html/rfc3253#section-8.2)

