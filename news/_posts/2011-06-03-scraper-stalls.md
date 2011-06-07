---
layout: news
title: Scraper Stalls
category: news
---

Observant vim-scripts users
[noticed](https://github.com/vim-scraper/vim-scraper/issues/32)
that recently the scraper was stalled for 3 weeks.
The problems that caused this have been fixed and the scraper is rolling again.

While a three week outage is never good,
the occasional outage is expected and even a sign of health.
If you're interested, here's a bit more about why the scraper stalls.


### Whence Stalls

The scraper watches [vim.org's RSS feed](http://feed43.com/vim-scripts.xml),
processes the updated scripts, and goes back to sleep.  If there's a problem,
it bails out and refuses to process any more scripts until a human
intervenes and fixes the problem.

Why not just skip the offending script and keep on scraping?
Surely a coauthor of the
[Retryable](https://github.com/bronson/retryable)
gem knows how to rescue from exceptions!
Let the scraper keep churning, ignore the broken script,
and it would take months for anyone to notice or care that anything is wrong.
That should be more reliable, right?

Here's the catch: fixing scraper issues can be somewhat tedious.
It's not easy to find time to debug code, especially when most of the
time some sleazy script author stuck a .zip extension
on a .gif file.  Not very rewarding.

Programmers tend to have tons of cool things to work on.
You gotta yell pretty loud if you want to attract their attention.

Let's say the scraper just kept on cruising.
Every week or two another script author would find a new way of breaking things.
After a few weeks there would besome scripts, but vim-scripts users
would still be happy and there would be little incentive to fix things.
In a few months, by the time anyone has anything to complain about,
whole ghettos of stalled scripts would run through the project, and it would
take an immense effort to get things back on track.

The scraper needs to make sure its problems are
big enough to get fixed and yet small enough to still be fixable.
That's why it yells loudly and early.
The problem should still be small, the fix quick, and the entire project
will be back on track in a day or two.

Ensuring the most reliable behavior in the small picture
sometimes becomes destabilizing in the big picture.
NetFlix's [Chaos Monkey](http://techblog.netflix.com/2010/12/5-lessons-weve-learned-using-aws.html)
is another example of this.

And that's why scraper stalls are a normal part of life.
They happen occasionally, get crushed like a minor irritation,
and things are back to normal.  Mostly stable.

If you notice a stall, first smile because it's an indication that
things in Vim land are thriving.  Then, if nothing appears to be
happening, help the scraper yell for help.


### Postscript

I must say, I'm surprised that vim-scripts works as well as it does.  Web scraping is
messy business that continually breaks at random and inopportune times.
Add to that the complete free-for-all that is vim.org/scripts
(rename your script at any time, invent your own way of deleting your scripts,
no standard archive or plugin format, etc) and, in theory, you have an inky soup that just won't
convert into Pathogenable git repositories.  Last August I was starting to worry
that every morning I would wake up and immediately fix all the
scrape problems created on the previous day.

Happily, script authors tend to make the same mistakes and find the same solutions as one other.
If I find a workaround for one script, ten unrelated scripts will probably be fixed too (five
of which haven't even been written yet).
It was rocky going at first, but once the scraper reached a certain maturity,
it was finally able to wade through the soup and do a reasonable job all on its own.

Of course, it will never be complete, and there will always be stalls.
But, when I go on a two week vacation, I'm surprised if the scraper is
stalled when I get back.  And that's good enough!

