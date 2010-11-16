---
layout: news
title: Suppress Useless Apple Files
category: news
---

Apple software creates
[Desktop Services Store](http://en.wikipedia.org/wiki/.DS_Store)
files to keep track of folder locations and icons.
They're useless for vim scripts, though, so
the scraper now removes them.

The plugins who no longer carry .DS\_Store files:

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

Also, minor fixups to two scripts: put the tags on the correct commits,
and change the 'Syntax' directory to 'syntax' so the plugin will work
on case-sensitive filenames too.

 * 0790 - python.vim--Vasiliev
 * 2651 - fitnesse.vim

