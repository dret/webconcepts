---
title: "Building Web Concepts"
layout:    default
permalink: /building
---

Here is a rough overview of the current build process for the site:

* A new version of the complete site is generated via `transform.xsl`, which requires an XSLT 3.0 processor. The XSLT script reads all specification XML files, and generates Jekyll-enabled MD files for the complete site. It also generates JSON representations for concepts and specifications.

* The MD-based Web site is created by letting Jekyll generate a new site from the output of the XSLT processing step.

* After validating locally that everything looks good, a new version is committed to GitHub, and Jekyll runs there as well as part of the repository setup.
