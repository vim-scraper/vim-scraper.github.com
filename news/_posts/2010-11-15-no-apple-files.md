---
layout: news
title: Suppress Apple DS_Store Files
category: news
author: bronson
---

Apple software creates
[Desktop Services Store](http://en.wikipedia.org/wiki/.DS_Store)
files to keep track of folder locations and icons.
Since they're not needed in Vim scripts, the scraper removes them.

The plugins that no longer carry .DS\_Store files:

 * 1929 - DBGp-client
 * 2424 - Transmit-FTP
 * 2441 - pyflakes.vim
 * 2507 - 0scan
 * 2540 - snipMate
 * 2674 - cocoa.vim
 * 2813 - MailApp
 * 2852 - perlomni.vim
 * 2883 - growlnotify.vim
 * 2890 - slurper.vim

Also, minor fixups to two scripts: put tags on the correct commits,
and change 'Syntax' to 'syntax' so the script will work
on case-sensitive filesystems too.

 * 0790 - python.vim--Vasiliev
 * 2651 - fitnesse.vim

