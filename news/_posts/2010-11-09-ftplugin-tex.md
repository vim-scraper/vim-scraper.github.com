---
layout: news
title: TeX Script Location
category: news
author: bronson
---

Thanks to [DataWraith](https://github.com/DataWraith)
for [reporting](https://github.com/vim-scripts/vim-scraper/issues/issue/9)
that script 284's files weren't in the correct location.
TeX scripts need to go in ftplugin/tex, but the scraper just
put them in ftplugin.

The two scripts affected by this have been regenerated:

 * 0284 - unilatex.vim
 * 1095 - TabLaTeX

Also, it turns out that tex.vim has the wrong script type.  The correct
type is now [hard-coded into the scraper](https://github.com/vim-scripts/vim-scraper/commit/12a3e65c72c57f8ef0d19e7745ea28d54f99f5fa).

 * 0093 - tex.vim

