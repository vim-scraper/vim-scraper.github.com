---
layout: news
title: Fixed Newlines and Script Types
category: news
author: bronson
---

37 repositories have been fixed and regenerated.

Thanks to Marc Weber for pointing out that scala.vim was created with
the wrong type.  It is a syntax file, but claims to be a color scheme.
Fixed, and the repo has been regenerated.

 * 1780 - scala.vim

Also, some repositories had unreadable READMEs because of the way
we convert the HTML description to text.  The scraper
[has been updated](http://github.com/vim-scripts/vim-scraper/commit/fd3820d4b1930b24ecf8ba3ca55f6aad3294dab2)
and the repositories regenerated.  These are the affected scripts:

 * 0098 - spec.vim
 * 0101 - nlist.vim
 * 0111 - torte.vim
 * 0112 - borland.vim--Maerz
 * 0124 - quickhigh.tgz
 * 0170 - mcant.vim
 * 0216 - xmms-play-and-enqueue
 * 0355 - vimrc\_nopik
 * 0470 - HTML-Photo-Board
 * 0542 - russian-menu-translation
 * 0543 - nuweb.vim
 * 0631 - cf.vim
 * 0691 - POD-Folder
 * 0739 - yaml.vim
 * 0757 - showpairs-mutated
 * 0777 - highlight\_cursor.vim
 * 0930 - virata.vim
 * 0946 - StyleChecker--perl
 * 0958 - blugrine
 * 0959 - latex\_pt
 * 0960 - replace
 * 1053 - browser.vim
 * 1128 - synmark.vim
 * 1918 - Scheme-Mode
 * 2098 - fakeclip
 * 2100 - textobj-user
 * 2423 - Gist.vim
 * 2425 - arpeggio
 * 2678 - GoogleReader.vim
 * 2683 - FastLadder.vim
 * 2913 - spidermonkey.vim
 * 2958 - emoticon.vim
 * 2959 - emoticon.vim-B
 * 2981 - ZenCoding.vim
 * 2995 - colorselector
 * 3012 - vspec

If you have cloned any of these repos, you'll probably want to delete
your copies and re-clone.

