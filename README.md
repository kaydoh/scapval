# Security Content Automation Protocol Validator (SCAPVal)
> A command line tool to validate SCAP content.

## Overview
SCAPVal is a Java Command Line Application that provides information about whether SCAP content conforms to 
conventions and recommendations outlined in [NIST Special Publication 800-126 Rev.3],
The Technical Specification for the Security Content Automation Protocol (SCAP). With support for SCAP 1.1, 1.2, and 1.3

This repository contains the Security Content Automation Protocol Validator (SCAPVal) tool along with several required Java modules.

## Contents
- create-file-list-mojo - A maven plugin required to build and run SCAPVal.
- scap-schematron-rules - Includes schematron rules required to validate with SCAPVal.
- scapval - The Java command line tool to validate SCAP content.

## Requirements
Requires Java Runtime Environment (JRE) 1.8 or higher.
If the JAVA_HOME variable is set then the JRE which is at that location will be used. Otherwise the JRE available on the path is used.

## Build Notes
SCAPVal utilizes Apache Maven to build and has the following dependencies:
- gov.nist.secauto.oss-maven - https://github.com/usnistgov/oss-maven
- NIST Decima Framework - https://github.com/usnistgov/decima
- scap-schematron-rules - included in this repository /scap-schematron-rules
- Apache Commons Codec - available via Maven Central
- junit - available via Maven Central
- mitre-cpe - todo 

todo elaborate and provide command line build instructions?

License:
---------
[License Information]

Feedback:
---------
Please send tool defects reports, enhancement requests, and any other related
comments by email to scap@nist.gov.

[NIST Special Publication 800-126 Rev.3]:http://csrc.nist.gov/publications/PubsDrafts.html#SP-800-126-Rev-3
[License Information]:https://github.com/usnistgov/scapval/blob/master/scapval/src/main/distro/NOTICE.txt