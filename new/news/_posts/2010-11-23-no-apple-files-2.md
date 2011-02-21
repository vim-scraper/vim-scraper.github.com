---
layout: new_news
title: No Apple Files Part 2
category: news
---

The [previous attempt](/news/2010/11/15/no-apple-files.html)
at eradicating bogus Apple files didn't quite
get all of them.  In addition to removing .DS\_Store and .\_DS\_Store
files, now we remove all .\_\* files too.

The following scripts were affected:

* CodeOverview
* PIV
* cuteErrorMarker
* slurper.vim

With this change, the Scraper now produces the exact same results on
both Linux and MacOS.

