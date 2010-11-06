---
layout: news
title: Fixing Duplicate Version IDs
category: news
---

The scripts on vim.org are full of releases with the same version number
as the previous release.  The scraper used to drop these release because it
thought it had already imported them.

The scraper now works around this by appending @1 (or @2 if @1 has already
been taken, and so on) to the duplicate numbers.  They are now unique and
git is happy to tag them.

Here's an example: [jQuery](https://github.com/vim-scripts/jQuery/commit/d321b054770aa9fe713f306cedb5695c1a866bb5)

The 90 affected scripts have been regenerated:

 * 0015 - ccase.vim
 * 0020 - jcommenter.vim
 * 0030 - python.vim
 * 0031 - a.vim
 * 0072 - foo.vim
 * 0076 - uri-ref
 * 0090 - vcscommand.vim
 * 0096 - methods.vim
 * 0100 - TagsBase.zip
 * 0107 - SelectBuf
 * 0163 - ruby-macros.vim
 * 0164 - html-macros.vim
 * 0171 - multvals.vim
 * 0225 - einstimer.vim
 * 0229 - searchInRuntime
 * 0300 - Vimacs
 * 0360 - rcsdiff.vim
 * 0415 - Zenburn
 * 0465 - vimspell
 * 0508 - ZoomWin
 * 0528 - mh
 * 0561 - help.vim
 * 0563 - rcsvers.vim
 * 0588 - JavaBrowser
 * 0724 - trash.vim
 * 0779 - php\_console.vim
 * 0830 - TT2-syntax
 * 0923 - timestamp.vim
 * 0987 - DoxygenToolkit.vim
 * 1038 - vimgrep.vim
 * 1053 - browser.vim
 * 1074 - python\_calltips
 * 1139 - tree
 * 1149 - GetFDCText.vim
 * 1213 - Vim-JDE
 * 1268 - acsb
 * 1273 - Mathematica-Syntax-File
 * 1318 - snippetsEmu
 * 1446 - MoveLine
 * 1506 - LargeFile
 * 1535 - TagsParser
 * 1609 - Ada-Bundle
 * 1673 - blueprint.vim
 * 1714 - Tail-Bundle
 * 1770 - etk-vim-syntax
 * 1807 - calmar256-lightdark.vim
 * 1856 - Jinja
 * 2028 - MarkLines
 * 2111 - robocom
 * 2156 - leo256
 * 2158 - diffchanges.vim
 * 2208 - Txtfmt-The-Vim-Highlighter
 * 2257 - bpel.vim
 * 2286 - Specky
 * 2301 - Gembase-dml-plugins
 * 2341 - postmail.vim
 * 2407 - MatlabFilesEdition
 * 2413 - Miranda-syntax-highlighting
 * 2416 - jQuery
 * 2427 - code\_complete-new-update
 * 2489 - maroloccio2
 * 2491 - maroloccio3
 * 2497 - shellinsidevim.vim
 * 2512 - guepardo.vim
 * 2535 - cca.vim
 * 2618 - ctk.vim
 * 2620 - neocomplcache
 * 2632 - nimrod.vim
 * 2658 - Changing-color-script
 * 2662 - ywvim
 * 2709 - SudoEdit.vim
 * 2771 - Conque-Shell
 * 2792 - perdirvimrc--Autoload-vimrc-files-per-di
 * 2793 - hybridevel
 * 2831 - mimicpak
 * 2843 - FlipLR
 * 2845 - ywchaos
 * 2945 - AutomaticTexPlugin
 * 2954 - hypergit.vim
 * 2960 - bisect
 * 2995 - colorselector
 * 2999 - django-template-textobjects
 * 3005 - simplecommenter
 * 3056 - Translit3
 * 3081 - JavaScript-Indent
 * 3164 - pythondo
 * 3188 - vimcompcrtr
 * 3199 - vim-addon-ocaml
 * 3244 - Timer-routine
 * 3257 - Say-Time

And script 2792 with that long and truncated name?  That is its name
on vim.org!

