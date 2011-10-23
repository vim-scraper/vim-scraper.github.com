---
layout: news
title: Site CNAME Troubles
category: news
author: bronson
---

**UPDATE:** GitHub has resolved the problem.  [http://vim-scripts.org](http://vim-scripts.org/)
is the best way to access this site now.

vim-scripts is having some DNS teething issues.  This article
describes how to access the pages even when things are going
wrong.

### URLs

The scripts can always be found at:

 * [http://github.com/vim-scripts](http://github.com/vim-scripts)

The pages that you're reading right now
can be found in one of two locations:

 * [http://vim-scripts.org](http://vim-scripts.org)
 * [http://vim-scripts.github.com](http://vim-scripts.github.com)

The longer URL should just redirect to the shorter one.
Until the problems have been resolved, however, it appears
that only the longer URL will work.  The shorter one
just displays an unhelpful GitHub page.

*I recognize the futility of putting a page on the site
telling how to access the site.  Ah well!*

### The Problem

Continue reading only if you're interested in how this stuff works.  Or doesn't work.

This site is generated using the remarkably useful [GitHub Pages](http://pages.github.com/).
The problem is, right now GitHub seems to be rejecting our
[CNAME file](http://github.com/vim-scripts/vim-scripts.github.com/commit/c26905b9aec9b5d96c432bcf6a515c85753e94e6)
causing http://vim-scripts.org to fail to resolve.

Probably related, when I push the jekyll pages, GitHub sends an email saying:

        The page build failed with the following error:
        Bad CNAME for vim-scripts/vim-scripts.github.com: "vim-scripts.org"

As far as I can tell, the CNAME file is fine and the vim-scripts.org
DNS is set up exactly [as documented](http://pages.github.com/).

UPDATE: GitHub [support issue filed](http://support.github.com/discussions/site/2081-page-build-failed-bad-cname).

I'm hoping this is the sort of problem that
solves itself in a day or two...  DNS problems often are.

