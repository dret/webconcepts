---
layout: page
title:  "HTTP Header Field: Digest"
---

[**RFC 3230**: Instance Digests in HTTP](/specs/IETF/RFC/3230 "HTTP/1.1 defines a Content-MD5 header that allows a server to include a digest of the response body.  However, this is specifically defined to cover the body of the actual message, not the contents of the full file (which might be quite different, if the response is a Content-Range, or uses a delta encoding).  Also, the Content-MD5 is limited to one specific digest algorithm; other algorithms, such as SHA-1 (Secure Hash Standard), may be more appropriate in some circumstances.  Finally, HTTP/1.1 provides no explicit mechanism by which a client may request a digest.  This document proposes HTTP extensions that solve these problems."): [The Digest message header field provides a message digest of the instance described by the message.]()

