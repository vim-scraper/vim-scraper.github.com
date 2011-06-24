---
layout: news
title: Picky About Timezones
category: news
---

Github has started refusing pushes from repositories created by the vim-scripts
scraper.  Due to one wayward digit in every commit on this
site, there's the chance that everyone will have to delete and re-clone
every repository they've ever downloaded.

We live in interesting times.

The good news is that the scraper is back online and caught up so for now things
should be fairly normal.  For now.


## The Story

Up until last week, GitHub was happy to accept commits with a time zone of -700.
Now, presumably due to a Git upgrade, they only accept pushes with
four digits time zones: -0700.  Everything else is refused.

Unfortunately, every vim-scripts commit has been generated
with a time zone of -700.

How did this happen?

Way back in the beginning of time, the scraper would shell out to the git
executable any time it needed to manipulate a repository.
Picture a sea of calls like `system("git tag -a -m ...")`,
then hoping that everything went OK.  It was slow, ugly, unreliable, confusing,
and *slow*.  It didn't take long to realize that this just wasn't going to work.

Then I tried switching to [Grit](https://github.com/mojombo/grit).
This made things prettier because I could use Grit objects instead
of passing text strings everywhere, the errors became more understandable,
and there were a few other small benefits.  However, there were some serious
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
to pack it in, along would come a person or a gem that guided things
back on track.  In this case it was Daniel Mendler's
[gitrb](https://github.com/minad/gitrb) gem.

Gitrb is a real, object-based API in 100% Ruby that directly manipulates the
on-disk Git repository.  It's fast, it's easy to use, it's even
kind of fun.  The few
issues that I found were easy to solve and Daniel was very responsive with
modifications.  The scraper was rolling again.

One of the issues that I ran into was that Gitrb produced invalid time zones in the
western hemisphere: --700.   The git executable would not accept these commits.
It's easy to understand, Daniel lives in to the east of the Meridian.
No problem, a
[quick patch,](https://github.com/minad/gitrb/commit/c409985f0fe88993a76a0f3b46528b9cc9bf4eda)
the time zone is -700, and git is happy with every commit.


### The Bug Comes Home

Fast-forward nine months.  Nine wonderful months completely free of git-related issues.

Just as the [RSS feed comes back online](/news/2011/06/12/rss-gone.html),
GitHub starts refusing every push we make.  It took a while to find 
the problem because
git log --pretty=fuller shows the correct -0700 time zone.  It's only when you
use git log --pretty=raw that the horrifying truth becomes apparent.

> The commit date in every commit in every vim-scripts repository is invalid.

Git didn't use to care.
The check was
[added in April 2010,](https://github.com/git/git/commit/daae19224a05be9efb9a39c2a2c1c9a60fe906f1)
a month before I wrote the Gitrb time zone fix.
If only I had tested it against git HEAD...

Fixing gitrb
[was easy.](https://github.com/minad/gitrb/pull/11)
Fixing all the broken repos, now that's going to be a challenge.


### What Does it Mean?

Well, nothing needs to change immediately.  Thanks to Bundler, the scraper started
[using the fixed gitrb](https://github.com/vim-scraper/vim-scraper/commit/26aa456419ec10276887b4565c8e70fd93499bab)
right away.  GitHub is accepting the fixed commits and we should be caught up in a day
(NOTE: 4 hours later, we're caught up).

There's still a minor problem when a script author renames a repository.  When the scraper
sees a rename, it first pushes a commit describing the rename
([example](https://github.com/vim-scripts/my-_vimrc-for-Windows-2000XP-users)),
then it copies the old repo to the new name (ensuring the plugin's history continues
unchanged) and uploads the new repository.
Now the upload fails, of course, because GitHub refuses to accept the broken commits.
Luckily, renames are fairly rare.

Longer term, we need a proper fix.  The only way that I see is to regenerate
every repository and re-upload everything to github.
This is not unprecedented.  We did it back in October 2010
([start](news/2010/10/19/upload-finished.html),
[finish](/news/2010/10/19/upload-finished.html)),
before beta, when the scraper had become much smarter at parsing dates and email addresses.

Of course, that means that everyone will have to delete all their local repos and
clone them again.  That should be fairly painless if you're using
[Vundle](https://github.com/gmarik/vundle)
or
[vim-update-bundles](https://github.com/bronson/vim-update-bundles/).  For people
maintaining their plugins by hand, though, this might be an unpleasant surprise.

Luckily, we don't have to do anything immediately.  We can take a few weeks and
make sure to implement the proper fix, whatever it turns out to be.

