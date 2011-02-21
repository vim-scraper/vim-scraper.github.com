---
layout: new_news
title: Suppressing VCS Directories
category: news
---

The scraper now suppresses common VCS dirs (.git, .hg, .bzr, and .svn).
The following scripts were affected:

 * 2890 - slurper.vim.stats
 * 2960 - bisect.stats
 * 3081 - JavaScript-Indent.stats
 * 3224 - VIM-Color-Picker.stats
 * 3310 - gdb4vim.stats

Also, to unify some code paths, the scraper
[no longer uses](https://github.com/vim-scripts/vim-scraper/commit/73797feb69a4870b602d2f33c470ae947c567f67)
the minitar gem to untar files.
It now shells out to the unix utility, just like it
does for zip, rar, 7z, and xv.
This fixed a single script:

 * 1608 - Chrome syntax script

A quick ramble offtopic...  I've had zero troubles with
Ruby's minitar (as opposed to rubyzip, which
[has been painful](http://www.ruby-forum.com/topic/211146#936159)),
so it comes as a bit of a surprise to me that it hasn't been doing
a perfect job.  This just reinforces my
suspicion that it's a bad idea to rely on little-used
gems to perform a complex task when you can just shell out
to a tool that's used and tested every day (probably every minute).

Shell out.  It may not be as pure but it's a heck of a lot more
reliable.
