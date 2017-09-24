---
title: "Forking Web Concepts"
layout:    default
permalink: /forking
---

# Forking Web Concepts

All *Web Concepts* data is openly and freely [available on GitHub](https://github.com/dret/webconcepts). [Its license allows you to freely reuse Web concepts in any shape or form](/LICENSE.md). The site is entirely run off of the GitHub repository, meaning that if you fork the repository, you have everything that there is.

[Web Concepts](http://webconcepts.info/) is meant as a starting point and covers many standards. Naturally, it may not cover *all* standards that you care about, and/or it may not cover standards that you *do not care about*. You should be able to just see *the Web Concepts that you care about*, and you can do this by forking the repository, and then removing and/or adding Web Concepts.

For forking Web Concepts, all you need to do is [fork the Github repository](https://help.github.com/articles/fork-a-repo/) [`dret/webconcepts`](https://github.com/dret/webconcepts), which will create a new repository. Then you need to set up Jekyll, which can be either [simply via GitHub pages](https://pages.github.com/), or you can setup Jekyll elsewhere. If you make any changes to the repository, the build process is to use an XSLT 3.1 processor on [`transform.xsl`](/transform.xsl). This will generate both the Jekyll site, and the [JSON representation](/JSON).

Keep in mind that Web Concepts is entirely driven via *concept documentation*, meaning that concepts and their values are never directly added, but instead are listed in [specifications (from which the information is extracted when the site is built)](/src/specs). This means that making *any* changes always requires changes to the specifications, which then get reflected when the site is rebuilt.


## Removing Web Concepts

[removing Web Concepts](removing)


## Adding Web Concepts

[adding Web Concepts](adding)
