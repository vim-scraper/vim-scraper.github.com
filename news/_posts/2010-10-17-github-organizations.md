---
layout: news
title: GitHub Organization Conversion Mistake
category: news
---

A quick note on why I converted vim-scripts to a GitHub organization,
and then converted it back.

Let's start at the beginning...

I'm fairly unhappy with the way GitHub handles messaging.
Mostly it's because GitHub makes it impossible to reply directly
to a GitHub message via email.

When somebody sends vim-scripts a
message, I need to log out of my account, log into vim-scripts, write
the reply from scratch using the lame webform editor,
log out, log back into my personal account, and then do it all
over again in a few hours.  The outgoing message
isn't saved so I can't easily copy from previous converations.
It's private.  It's tedious.  It's horrible.  I'll never do it.

Therefore, I'd like to disable messaging completely on the vim-scripts account.
Alas, GitHub doesn't allow that.  If you turn off message notifications,
people will still send you messages, you'll just never hear about it.

That's why I was rejoicing when I saw that all of this business
appears to be fixed with
[GitHub organizations](http://github.com/blog/674-introducing-organizations).
I converted vim-scripts last week.

Result: catastrophe.

The first problem was that GitHub
[doesn't allow you to follow](http://groups.google.com/group/github/browse_thread/thread/16d6bb44db891568)
an organization
[(support issue)](http://support.github.com/discussions/feature-requests/950-feature-request-follow-this-organization).
Without warning, everyone following vim-scripts was bumped out.  Sorry!
I tried creating a [vim-scraper](http://github.com/vim-scraper)
user for interested people to follow but that had problems of its own.

Besides, who would think to follow vim-scraper when you want to watch
what's happening on vim-scripts?  This organization
was barely 10 minutes old and already it was starting to smell putrid.

After a few more hours I managed to work around all of the problems except
[one showstopper](http://github.com/develop/develop.github.com/commit/4ec1902ca7573aeacdf29866556fcf0ac827b290#comments).
Oh well!  There's no way to convert an organization back into a user
so I had to delete vim-scripts and start from scratch.

Even if GitHub fixes all the problems we ran into, I don't think I'll
convert back any time soon.  Feel free to follow vim-scripts without
having to worry about what GitHub's confusion about what it means to
follow an organization.

So, we're back to where we started.
The best way to watch what's happening on vim-scripts?  Follow it!

