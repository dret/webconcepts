---
layout: page
title:  "Model for Tabular Data and Metadata on the Web"
---

| *Document Name:* | W3C TR http://www.w3.org/TR/tabular-data-model
| *Document URI:* | `tabular-data-model`
| *Online Version:* | [`http://www.w3.org/TR/tabular-data-model`](http://www.w3.org/TR/tabular-data-model)
| *Organization:* | [World Wide Web Consortium (W3C)](..  "List of specification series by this organization")
| *Series:* | [Technical Report (TR)](.  "List of specifications in this series")
| *Abstract:* | Tabular data is routinely transferred on the web in a variety of formats, including variants on CSV, tab-delimited files, fixed field formats, spreadsheets, HTML tables, and SQL dumps. This document outlines a data model, or infoset, for tabular data and metadata about that tabular data that can be used as a basis for validation, display, or creating other formats. It also contains some non-normative guidance for publishing tabular data as CSV and how that maps into the tabular data model. An annotated model of tabular data can be supplemented by separate metadata about the table. This specification defines how implementations should locate that metadata, given a file containing tabular data. The standard syntax for that metadata is defined in tabular metadata. Note, however, that applications may have other means to create annotated tables, e.g., through some application specific APIs; this model does not depend on the specificities described in tabular-metadata.

<br/>
<hr/>

## Specified Web Concepts:

### Well-Known URIs

[`csvm`](/concepts/well-known-uri/csvm "If the user has not supplied a metadata file as overriding metadata and no applicable metadata file has been discovered through a Link header, processors must attempt to locate a metadata documents through site-wide configuration. In this case, processors must retrieve the file from the well-known URI /.well-known/csvm.")



<br/>
<hr/>

<p style="text-align: right">Return to ( <a href="./">Series</a> | <a href="../">Organization</a> | <a href="../../">all Specifications</a> )</p>