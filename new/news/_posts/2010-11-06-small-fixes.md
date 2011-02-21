---
layout: new_news
title: Small Fixes for options.vim and Emacs Swap Files
category: news
---

Some scripts include a file whose name ends in \_options.vim that
contains example code that should be copied into your ~/.vimrc file.
The scraper thought that this was plugin in the wrong place
and would move it to the plugin directory.  Now it just leaves \_options.vim
files wherever it finds them.

 * 1352 - Modelines-Bundle
 * 1561 - Rainbow-Parenthsis-Bundle
 * 1609 - Ada-Bundle
 * 1714 - Tail-Bundle
 * 1719 - WLS-Mode
 * 1768 - SnipSnap
 * 2029 - 4NT-Bundle

Also, three scripts included Emacs swap files.  The scraper now ignores all
files that end in "~".

 * 0100 - TagsBase.zip
 * 2838 - HiVim
 * 2935 - superSnipMate

The affected repos have been regenerated.  Delete your local copies
and re-clone!

