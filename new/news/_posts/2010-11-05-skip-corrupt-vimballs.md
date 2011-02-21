---
layout: new_news
title: Skipping Corrupt Vimballs
category: news
---

It's not easy to tell when a vimball is corrupt or didn't extract
well.  Quick rant: figuring out
how to reliably extract vimballs has taken _way_ more than all other
archive formats combined, including weirdos like rar, 7z, and xv.
And the job still isn't done.

Anyhow, when a vimball is corrupt but claims to have extracted OK,
it looks in the Git repo like the author deleted all files project and
re-added them in the next commit.  Now the following plugins have
a proper revision history.

 * 1609 - Ada-Bundle
 * 1714 - Tail-Bundle
 * 3028 - rename.vim

Also, the following script has an invalid zipfile.  This was easy
to fix.

 * 3281 - run\_python\_tests

If you've cloned any of these plugins, delete your copies and re-clone!

