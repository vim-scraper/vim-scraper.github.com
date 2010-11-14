---
layout: news
title: Remove Needless Directories
category: news
---

A small refactoring allows the scraper to be a lot smarter about cleaning
up archive hierarchies.  What do I mean?  Stuff like this:

    script-0.1/plugin/script.vim
    script-0.1/doc/script.txt

That leading "script-0.1" should be removed.  It's not easy to figure
out which can be removed and which ones need to be kept, especially
for a small script scraping robot.  There are as many different ways
of naming directories as there are script authors.

It's still not perfect (nor will it ever be), but it's much, much better.

The following scripts have been improved:

 * 0023 - EnhCommentify.vim
 * 0067 - nqc.vim
 * 0090 - vcscommand.vim
 * 0100 - TagsBase.zip
 * 0213 - c.vim
 * 0222 - mu-template
 * 0280 - netdict
 * 0300 - Vimacs
 * 0336 - lh-cpp-ftplugins
 * 0365 - bash-support.vim
 * 0391 - LaTeX-functions
 * 0403 - eruby.vim
 * 0459 - vim-templates
 * 0468 - VEC
 * 0472 - mup.vim
 * 0556 - perl-support.vim
 * 0560 - MPD-syntax-highlighting
 * 0584 - pyljpost.vim
 * 0663 - VimDebug
 * 0684 - Comment-Tools
 * 0722 - cygwin.vim
 * 0775 - vimcdoc
 * 0835 - systemc\_syntax.tar.gz
 * 0860 - inform.vim
 * 0861 - VikiDeplate
 * 0889 - EvalSelection.vim
 * 0906 - Editable-User-Interface-EUI-eui\_vim
 * 0922 - svncommand.vim
 * 0996 - tbf-vimfiles
 * 1000 - gtk-vim-syntax
 * 1021 - feralstub.vim
 * 1030 - scalefont
 * 1038 - vimgrep.vim
 * 1039 - array.vim
 * 1053 - browser.vim
 * 1054 - InteractHL.vim
 * 1055 - curBuf.vim
 * 1059 - pygtk\_color
 * 1060 - Vive.vim
 * 1095 - TabLaTeX
 * 1127 - vim2ansi
 * 1160 - tSkeleton
 * 1173 - tComment
 * 1177 - OAL-Syntax
 * 1196 - omlet.vim
 * 1232 - DoTagStuff
 * 1284 - TortoiseSVN.vim
 * 1306 - cguess
 * 1311 - vimplate
 * 1431 - checksyntax-B
 * 1442 - XML-Completion
 * 1460 - glark.vim
 * 1582 - vim-addon-background-cmd
 * 1584 - Erlang-plugin-package
 * 1616 - tdl.vim
 * 1620 - scvim
 * 1631 - gnuchangelog
 * 1633 - svncommand-tng
 * 1694 - SnippetsMgr
 * 1724 - pyljvim
 * 1730 - tAssert
 * 1748 - toggle\_word.vim
 * 1762 - aspnetcs
 * 1770 - etk-vim-syntax
 * 1771 - woc
 * 1810 - Infobasic-Set-Syntax-FTDetect-FTPlugi
 * 1911 - SuperPre
 * 1915 - tbibtools
 * 1929 - DBGp-client
 * 1939 - autofmt
 * 1967 - gvim-extensions-for-TALpTAL
 * 2011 - dbext4rdb
 * 2040 - tcalc
 * 2098 - fakeclip
 * 2100 - textobj-user
 * 2101 - textobj-datetime
 * 2114 - Torquescript-syntax-highlighting
 * 2193 - fpdf.vim
 * 2213 - VimTAP
 * 2219 - Limp
 * 2245 - upf.vim
 * 2250 - common\_vimrc
 * 2263 - xtemplate
 * 2275 - textobj-fold
 * 2276 - textobj-jabraces
 * 2301 - Gembase-dml-plugins
 * 2305 - Textile-for-VIM
 * 2335 - metarw
 * 2336 - metarw-git
 * 2337 - ku
 * 2343 - ku-bundle
 * 2344 - ku-metarw
 * 2348 - Chimp
 * 2355 - textobj-lastpat
 * 2382 - Note-Maker
 * 2393 - QuickTemplate
 * 2410 - ku-args
 * 2415 - textobj-diff
 * 2417 - Merb-and-Datamapper
 * 2425 - arpeggio
 * 2483 - Gorilla
 * 2484 - textobj-indent
 * 2501 - VimClojure
 * 2523 - Jifty-syntax
 * 2610 - textobj-entire
 * 2619 - textobj-function
 * 2620 - neocomplcache
 * 2622 - ku-quickfix
 * 2624 - ProtoDef
 * 2627 - exVim
 * 2657 - VOoM
 * 2665 - HtmlHelper
 * 2692 - operator-user
 * 2700 - PKGBUILD
 * 2715 - UltiSnips
 * 2716 - textobj-syntax
 * 2729 - jslint.vim
 * 2771 - Conque-Shell
 * 2782 - operator-replace
 * 2787 - Melt-Vim
 * 2793 - hybridevel
 * 2805 - assistant
 * 2858 - textobj-fatpack
 * 2877 - spinner.vim
 * 2878 - RDoc
 * 2890 - slurper.vim
 * 2905 - vim-addon-manager
 * 2907 - hlint
 * 2933 - vim-addon-fcsh
 * 2934 - vim-addon-actions
 * 2940 - vim-addon-mw-utils
 * 2957 - load\_template
 * 2968 - ikiwiki-nav
 * 3012 - vspec
 * 3017 - Cppcheck-compiler
 * 3020 - EasyOpts
 * 3069 - Slidedown-Syntax
 * 3071 - reimin
 * 3081 - JavaScript-Indent
 * 3122 - PySuite
 * 3124 - vim-addon-sbt
 * 3125 - PIV
 * 3196 - gedim
 * 3207 - bundler
 * 3227 - Simple-Javascript-Indenter
 * 3264 - Vimtodo
 * 3290 - RevealExtends
 * 3293 - numbered
 * 3303 - smartbd
 * 3304 - Gundo

This was the last major deficiency in the scraper, fixed.
 Hopefully it's just minor cleanups from here on out.

