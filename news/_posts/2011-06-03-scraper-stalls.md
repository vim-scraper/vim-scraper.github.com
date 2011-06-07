---
layout: news
title: Scraper Stalls
category: news
---

Observant [vim-scripts users](https://github.com/vim-scraper/vim-scraper/issues/32)
noticed that recently the scraper was stalled for 3 weeks.
The problems that caused this have been fixed and the scraper is rolling again.
Nothing was lost, just delayed.

The rest of this post describes why stalling can actually a good thing.
And now, for those who care, a quick dip into vim-scripts theory.


### Whence Stalls

The scraper watches [vim.org's RSS feed](http://feed43.com/vim-scripts.xml),
processes the updated scripts, and goes back to sleep.  If there's a problem,
it completely bails out and refuses to process any more scripts until some human
intervenes and fixes the problem.

Why not just skip the offending script and keep on scraping?
Surely a coauthor of the
[Retryable](https://github.com/bronson/retryable)
gem knows how to rescue from an exception!
Let the scraper keep churning, stall just the broken script,
and it will probably take months for anyone to notice that anything is wrong.

Here's the catch: fixing scraper issues is tedious business.
It's not easy to find time to debug code, especially when most of the
time the problem is that some sleazy script author stuck a .zip extension on an
unzipped .gif file.  Not very rewarding.

Programmers tend to have tons of cool things lined up to work on.
You gotta yell pretty loud if you want to attract their attention.

If the scraper just kept cruising, every week another script auther would find a novel way of breaking things.
In a few weeks there would be a number of stalled scripts.  In a few months there would be entire ghettos.

The scraper needs to make sure its problems
big enough to get fixed and yet small enough to be fixable.
The best way to do this is to yell loudly and early.

That's why, when there's a problem, everything comes to a halt.
Like [broken window theory](http://www.codinghorror.com/blog/2005/06/the-broken-window-theory.html),
the scraper summons the repairman the instant it notices anything amiss
and it refuses to let anyone else onto the property until it is fixed.

It's counterintuitive that sometimes the most reliable behavior in the small picture
becomes destabilizing in the big picture.
NetFlix's [Chaos Monkey](http://techblog.netflix.com/2010/12/5-lessons-weve-learned-using-aws.html)
is another example.

And that's why scraper stalls are a normal part of life.
They are the breathing room that help the scraper grow and thrive.
They happen occasionally and, when they do, they can be crushed like a minor irritation.
Easy.

If you notice a stall, yell loudly.


### Postscript

I must say, I'm surprised that vim-scripts works as well as it does.  Web scraping is
messy business that continually breaks at random and inopportune times.
Add to that the complete free-for-all that is vim.org/scripts
(rename your script at any time, invent your own way of deleting your scripts,
no standard archive or plugin format, etc) and, in theory, you have an inky soup that won't
easily convert into Pathogenable git repositories.  Last August I was starting to worry
that every morning I would wake up and fix all the scrape problems created on the previous day.

Happily, script authors tend to make the same mistakes and find the same solutions as each other.
If I find a workaround for one script, ten unrelated scripts will probably be fixed too, five
of which haven't even been written yet.
Once the scraper reached a certain maturity, it was able to wade through the soup and do a
reasonable job all on its own.

The scraper will never be complete and there will always be stalls.
But, when I go on a two week vacation, I'm surprised if the scraper is stalled when I get back.
And that's good enough!

