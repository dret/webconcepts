---
layout:        concept
permalink:     "/concepts/http-method/MERGE"
title:         "HTTP Request Method: MERGE"
concept-name:  HTTP Request Method
concept-value: MERGE
description: "The MERGE method performs the logical merge of a specified version (the \"merge source\") into a specified version-controlled resource (the \"merge target\"). If the merge source is neither an ancestor nor a descendant of the DAV:checked-in or DAV:checked-out version of the merge target, the MERGE checks out the merge target (if it is not already checked out) and adds the URL of the merge source to the DAV:merge-set of the merge target."
---

**[RFC 3253: Versioning Extensions to WebDAV (Web Distributed Authoring and Versioning)](/specs/IETF/RFC/3253 "This document specifies a set of methods, headers, and resource types that define the WebDAV (Web Distributed Authoring and Versioning) versioning extensions to the HTTP/1.1 protocol. WebDAV versioning will minimize the complexity of clients that are capable of interoperating with a variety of versioning repository managers, to facilitate widespread deployment of applications capable of utilizing the WebDAV Versioning services. WebDAV versioning includes automatic versioning for versioning-unaware clients, version history management, workspace management, baseline management, activity management, and URL namespace versioning."):** [The MERGE method performs the logical merge of a specified version (the "merge source") into a specified version-controlled resource (the "merge target"). If the merge source is neither an ancestor nor a descendant of the DAV:checked-in or DAV:checked-out version of the merge target, the MERGE checks out the merge target (if it is not already checked out) and adds the URL of the merge source to the DAV:merge-set of the merge target.](http://tools.ietf.org/html/rfc3253#section-11.2 "Read documentation for HTTP Request Method &#34;MERGE&#34;")

<br/>
<hr/>

<p style="float : left"><a href="./MERGE.json" title="JSON representing this particular Web Concept value">JSON</a></p>
<p style="text-align: right">Return to list of all ( <a href="../http-method/">HTTP Request Methods</a> | <a href="../">Web Concepts</a> )</p>
