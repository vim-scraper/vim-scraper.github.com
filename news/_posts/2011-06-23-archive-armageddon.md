---
layout: news
title: Archive Armageddon
category: news
author: bronson
---

This is a quick description of two scraper stalls that happened in May.

Earlier we [discussed scraper stalls](/news/2011/06/03/scraper-stalls.html)
and how they prevent bugs from slipping through the cracks.
This post talks about two specific stalls from mid-March.
If it seems like old news, that's because this post has been sitting
half-written since June 3, silently ignored as all sorts of weird
and wonderful new ways to stall the scraper have been discovered.


## Sensing Files

A script author uploads a text file or an archive to vim.org, the
scraper downloads it and stuffs it into a git repository, and
Bob's your uncle.  No problem!

The trick is, mistakes run wild on vim.org.  The scraper needs to try
to clean things up.  And that quickly turns into guesswork.

The most common mistake script authors make is putting the wrong
extensions on the files they upload.
A .tgz is not actually gzipped, a .bz2 is actually gzipped, and so on.

We can sniff the file's
[magic](http://standards.freedesktop.org/shared-mime-info-spec/shared-mime-info-spec-latest.html#id2820544)
to discover what it *really* is
but that's
[often](https://github.com/minad/mimemagic/issues/1)
[wrong](https://github.com/minad/mimemagic/issues/4) too!
Besides, Java jarfiles sniff as zipfiles, some archive formats
sniff as the files they contain, and so on.
While it's more reliable than the file's extension, it turns out
we can't rely on file magic either.

The solution to this problem has produced the most complex part of the scraper:
[the sense_file routine](https://github.com/vim-scraper/vim-scraper/blob/1805e760f0d28d0a299e21e11c1950b90149f8c1/scraper#L1033).
It tries to reconcile the file's extension and magic to determine
the best way to handle it.
Grown through tedious trial and error, sense_file has become big and ugly
but, implausibly, it almost always works.


### The Case of the Misleading Extension

In mid-May, a script author uploaded a .tgz file that was only tar encoded.
The scraper didn't anticipate this, couldn't figure out which claim to trust,
so it bailed out.

I'm surprised it took this long for this particular mistake to show up!
I would have bet money that someone would have done it before 2005.

This was
[easy to solve](https://github.com/vim-scraper/vim-scraper/commit/203b1c40164eb62d9e6bb278fc9f864a25f6bd3e)
once it was clear what was going on.
Result: a 15 minute fix and a 2 day stall.


## Archive Formats

Most of the complexity may be in the sense_file routine (above),
but most of the time spent coding the scraper has gone into
figuring out just how to expand all the grotty archive formats on vim.org.
They have .zip, .tar, .tar.gz, .tar.bz2, .xz, .7z, .rar, .vba, and so on
With 12,000 files written by 1800 authors, there are going to be a lot of
incompatible, corrupt, and just plain weird files to figure out.

Zip and vimball are tied for the most heinous of all.
We'll talk about zip because it's common, interesting, and caused the
longest stall in May.  Let's hope that we never have the need to
discuss vimball (though you can grep the scraper's commit history for
'vimball' if you're morbidly curious).


### Zip a Dip

Way back in history, before vim-scripts was public, the scraper
[used](https://github.com/vim-scraper/vim-scraper/commit/c3ced2a81a2e4d214b72f5a0c779d38a6850d712)
the [Rubyzip gem](http://rubyzip.sourceforge.net/) to unzip files.
Unfortunately, Rubyzip has an
[obscure bug](http://www.ruby-forum.com/topic/211146#936159) that
is unlikely to ever be fixed.
This project means well but will never be mature enough to handle
the variety of zipfiles that we're processing.

So, throw that code out and try again.

The scraper was [converted](https://github.com/vim-scraper/vim-scraper/commit/6566011e0c12883ad5df313e130afa8f72f8d2db)
to shell out to the system's unzip command.
This was hugely more reliable.
The lesson is clear: whenever possible, use the same tool everyone else is using.
Especially when you're dealing with a lot of crazy data, code maturity
trumps pretty much everything else.

That said, even unzip needed
[some workarounds](https://github.com/vim-scraper/vim-scraper/commit/8627a4d17abe5a8ffd55d4874c4cc3280578dc29).

On Unixy systems, unzip tends to be a variant of the venerable
[Infozip](ftp://ftp.info-zip.org/pub/infozip/src/) command.
This code base dates all the way back to the 80s (remember far ptrs?).
It's beautifully stable but maintenance appears to be light and sporadic.
And the code, oh the code...  \*shudder\*  If you want to remember
what conditional macro hell was like, browse the Infozip source.

Anyhow, that worked swimmingly for nine months.
Then, a week ago, a script author uploaded
the first zipfile that Infozip can't handle:

    skipping: plugin/checklist.vim    need PK compat. v6.3 (can do v4.6)
    skipping: readme.markdown         need PK compat. v6.3 (can do v4.6)
    skipping: syntax/chklst.vim       need PK compat. v6.3 (can do v4.6)

Back in 2006, pkware
[updated the zipfile specification](http://www.pkware.com/documents/casestudies/APPNOTE.TXT)
and Infozip still can't handle it.
And, given its slow rate of development,
6.3 compatibility is probably years away.
Time to find another unzipper!

It turns out [Igor Pavlov's 7-zip](http://www.7-zip.org/)
utility can uncompress zipfiles, handles the new format,
and the scraper is already using it to uncompress .7z files anyway!
With just a small tweak we can use 7z for all zipfiles.

Unfortunatley, 7z can't reliably unzip DOS archives that
use '\' as a path separator.
There are currently seven zipfiles in the archives that 7z can't uncompress.
This looks easy to fix so I've filed a
[feature request](https://sourceforge.net/tracker/index.php?func=detail&aid=3310980&group_id=14481&atid=114481#).

But, once again, that leaves us with a compromise to make.
For now, the scraper will continue to use Infozip to unzip
regular zipfiles and
[special case](https://github.com/vim-scraper/vim-scraper/commit/cee66a5052bf52a2c111af1e02a57aaf0c13085a)
any new zipfiles that Infozip can't handle.  (If a v6.3 zipfile
that uses '\' as a path separator shows up then we're hosed).

When the newer zip format becomes more widely used and the special-case
list is getting too long, we can switch to
using 7z by default and then hard-code the seven files that require Infozip.
Another approach would be to sniff the zipfile to see what path separator
it's using and then use that to determine which unzipper to use.

With a little time and luck, hopefully the feature request will receive some
love, 7z will properly handle all zipfiles, and there will be no need
to special-case anything anymore.

And that's how a small scraper stall can turn into a big research project!

