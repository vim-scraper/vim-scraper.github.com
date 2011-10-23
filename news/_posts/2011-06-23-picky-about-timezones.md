---
layout: news
title: Picky About Timezones
category: news
author: bronson
---

Github has started refusing commits created by the scraper.
Due to a missing zero in the committer date, there's a chance that
all script repositories will have to be regenerated.

We live in interesting times.

The good news is that the scraper is back online and caught up so,
other than that, things should be back to normal.


## The Story

Up until last week, GitHub was happy to accept commits with a time zone of -700.
Now, presumably due to a Git upgrade, they only accept pushes with
four digit time zones: -0700.  The others are refused.

Unfortunately, every vim-scripts commit has been generated
with a time zone of -700.

How did this happen?

Back in the beginning of time, the scraper would shell out to the git
executable any time it needed to manipulate a repository.
Picture a sea of calls like `system("git tag -a -m ...")`
and hoping that everything went OK.
It was slow, ugly, unreliable, and confusing.

Then I tried switching to [Grit](https://github.com/mojombo/grit).
This made things prettier because I could use Grit objects instead
of passing text strings everywhere, the errors became more understandable,
and there were a few other benefits.  However, there were some serious
drawbacks too: it was continually changing the current directory, confusing
itself, and it still shelled out for everything.  It was pretty
clear that Grit was written with GitHub's needs in mind and, if I wanted
to use it in the scraper, I would have to commit to some serious work.

Writing Git bindings before even starting to work on the scraper would have
taken too much time.
Nowadays [libgit2](http://libgit2.github.com/) could have solved this
but, at the time, this looked like a death blow.


### Enter Gitrb

The vim-scripts project has been amazingly lucky a few times in its
history.  Just when everything looked bleak and it was time
to pack it in, along would come a person or a gem that put things
back on track.  In this case it was Daniel Mendler's
[gitrb](https://github.com/minad/gitrb) gem.

Gitrb is a real, object-based API in 100% Ruby that directly manipulates the
on-disk Git repository.  It's fast, it's easy to use, it's even
kind of fun.  The few
issues that I found were easy to solve and Daniel was very responsive to
modifications.  The scraper was rolling again.

One of the issues that I ran into was that Gitrb produced invalid time zones in the
western hemisphere: --700, which git would immediately refuse.
It's easy to understand, Daniel lives to the east of the Meridian.
No problem, a
[quick patch,](https://github.com/minad/gitrb/commit/c409985f0fe88993a76a0f3b46528b9cc9bf4eda)
and git is happy with time zones of -700.


### The Bug Comes Home

Fast-forward nine months.  Nine wonderful months free of git-related issues.

Just as the [RSS feed comes back online](/news/2011/06/12/rss-gone.html),
GitHub starts refusing every push we make.  It took a while to find
the problem because
git log --pretty=fuller shows the correct -0700 time zone.  It's only when you
use git log --pretty=raw that the horrifying truth becomes apparent.

Git didn't care before.
The check was
[added in April 2010,](https://github.com/git/git/commit/daae19224a05be9efb9a39c2a2c1c9a60fe906f1)
a month before I wrote the Gitrb time zone fix.

Fixing gitrb
[was easy.](https://github.com/minad/gitrb/pull/11)
Fixing all the broken repos, now that's going to be a challenge.


### What Does it Mean?

Well, nothing needs to change immediately.  Thanks to Bundler, the scraper started
[using the fixed gitrb](https://github.com/vim-scraper/vim-scraper/commit/26aa456419ec10276887b4565c8e70fd93499bab)
right away.  GitHub is accepting the fixed commits and we should be caught up in a day
(update: 4 hours later, we're caught up).

Of course, we still need a proper fix.  The only way that I see is to regenerate
every repository and re-upload everything to github.
This is not unprecedented.  We did it back in October 2010
([start](news/2010/10/19/upload-finished.html),
[finish](/news/2010/10/19/upload-finished.html)),
before beta, when the scraper had become much smarter at parsing dates and email addresses.

Of course, that would mean that all local repos will have to be deleted
and re-cloned.
That should be fairly painless if you're using
[Vundle](https://github.com/gmarik/vundle)
or
[vim-update-bundles](https://github.com/bronson/vim-update-bundles/).
For people maintaining their plugins by hand, though, this might be
an unpleasant surprise.

Luckily, we don't have to do anything immediately.  We will take the time
to implement the proper fix, whatever it turns out to be.

