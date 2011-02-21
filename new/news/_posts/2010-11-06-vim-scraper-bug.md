---
layout: new_news
title: Fixed a Scraper Bug
category: news
---

The scraper
[had a bug](https://github.com/vim-scripts/vim-scraper/commit/c280ccf6891141e5e37bd109a9f09496ea2bd24f)
where it would mistakenly think that .vimrc files (or .vimanything) were .vim
files and throw them into plugins.  This missing dollar sign caused 25
scripts to be generated with files in the wrong place.

 * 0213 - c.vim
 * 0365 - bash-support.vim
 * 0369 - atomcoder-vim
 * 0410 - muf.vim
 * 0517 - TVO--The-Vim-Outliner
 * 0556 - perl-support.vim
 * 0570 - GTK-
 * 0795 - xterm16.vim
 * 0838 - macro.vim
 * 1000 - gtk-vim-syntax
 * 1540 - mousefunc-option-patch
 * 1541 - GetChar-event-patch
 * 1770 - etk-vim-syntax
 * 2126 - accurev
 * 2145 - GOBject-Builder-gob2
 * 2304 - vimdb.vim
 * 2417 - Merb-and-Datamapper
 * 2502 - fly.vim
 * 2638 - blogger
 * 2651 - fitnesse.vim
 * 2729 - jslint.vim
 * 2838 - HiVim
 * 2871 - FindMate
 * 2885 - gsession.vim
 * 3147 - wmgraphviz

They have been regenerated with everything where it should be.  Delete and re-clone!
