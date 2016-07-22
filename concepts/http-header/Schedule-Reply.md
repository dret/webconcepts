---
layout: page
title:  "HTTP Header Field: Schedule-Reply"
---

**[RFC 6638: Scheduling Extensions to CalDAV](/specs/IETF/RFC/6638 "This document defines extensions to the Calendaring Extensions to WebDAV (CalDAV) &#34;calendar-access&#34; feature to specify a standard way of performing scheduling operations with iCalendar-based calendar components. This document defines the &#34;calendar-auto-schedule&#34; feature of CalDAV."):** [The Schedule-Reply request header is used by a client to indicate to a server whether or not a scheduling operation ought to occur when an "Attendee" deletes a scheduling object resource. In particular, it controls whether a reply scheduling message is sent to the "Organizer" as a result of the removal. There are situations in which unsolicited scheduling messages need to be silently removed (or ignored) for security or privacy reasons. This request header allows the scheduling object resource to be removed if such a need arises.](http://tools.ietf.org/html/rfc6638#section-8.1)

