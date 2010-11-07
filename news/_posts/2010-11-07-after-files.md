---
layout: news
title: Autoload and After directories
category: news
---

A lot of plugins put files in autoload or after directories, which
are themselves nested in other directories.  This is perfectly valid,
of course, but the scraper tended to move them from autoload/plugin
to the regular plugin directory.

Fixed now.  These are the affected scripts:

 * 0099 - mail.tgz
 * 0222 - mu-template
 * 0336 - lh-cpp-ftplugins
 * 0575 - gnu-c
 * 0614 - CRefVim
 * 0835 - systemc\_syntax.tar.gz
 * 1048 - R.vim
 * 1052 - The-Mail-Suite-tms
 * 1232 - DoTagStuff
 * 1291 - luarefvim
 * 1318 - snippetsEmu
 * 1442 - XML-Completion
 * 1520 - OmniCppComplete
 * 1727 - Templeet
 * 2099 - xml\_autons
 * 2294 - SwapIt
 * 2385 - sqlite\_c
 * 2417 - Merb-and-Datamapper
 * 2495 - Pimp
 * 2534 - d.vim--Suhoverhov
 * 2540 - snipMate
 * 2627 - exVim
 * 2628 - Vim-R-plugin
 * 2674 - cocoa.vim
 * 2740 - vimper
 * 2935 - superSnipMate
 * 2954 - hypergit.vim
 * 3125 - PIV
 * 3154 - vorax
 * 3200 - Haskell-Conceal
 * 3265 - cSyntaxAfter

