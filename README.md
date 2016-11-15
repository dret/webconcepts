# Web Concepts

This is the repository for the [Web Concepts site published at `webconcepts.info`](http://webconcepts.info/).

## Setup

There probably should be a bit of documentation of how all of this works... A very high-level overview is this:

* New categories ([concepts](http://webconcepts.info/concepts) or [specification organizations/series](http://webconcepts.info/specs)) get added via XML configuration files in those directories.

* New specification data gets added to the specification source directory as individual XML files. These specification files contain information about the concepts that are defined by the specifications.

* A new version of the complete site is generated via `transform.xsl`, which requires an XSLT 3.0 processor. The XSLT script reads all specification XML files, and generates Jekyll-enabled MD files for the complete site. It also generates JSON representations for concepts and specifications.

* The MD-based Web site is created by letting Jekyll generate a new site from the output of the XSLT processing step.

* After validating locally that everything looks good, a new version is committed to GitHub, and Jekyll runs there as well as part of the repository setup.


## License

Please respect [the license](LICENSE.md).
