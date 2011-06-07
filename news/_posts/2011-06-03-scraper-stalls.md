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

Here's the catch: fixing scraper issues can get pretty tedious.
It's not easy to find time to debug code, especially when most of the
time it turns out to be nothing more than a .zip extension
on an uncompressed .gif.

Programmers have lots of cool things to work on.
You need to yell pretty loud if you want to attract their attention.

So, for the sake of argument, let's say the scraper just kept on cruising.
Every week or two another script author finds a new way of breaking things
and a few more scripts fail.  Unless it's a high profile script like rails.vim,
no maintainer shows up to mend the problems.  After some difficult years, the scraper
finds that it can
only scrape [taglist.vim](http://www.vim.org/scripts/script.php?script_id=273).
No maintainer is willing to devote the man month of time to repair the hundreds
of small problems everywhere.
Suddenly finding itself friendless and jobless, unforked and unloved,
the scraper sits forever idle on GitHub.

##### The Upshot

The scraper walks a fine line: it needs to ensure its problems are
big enough to get fixed and yet small enough to be fixable.
That's why it yells loud and early.
Hopefully the problem is small, the fix quick, and the entire project
will be back on track in a day or two.

Forcing the most reliable behavior in the small picture can
sometimes be destabilizing in the big picture.
NetFlix's [Chaos Monkey](http://techblog.netflix.com/2010/12/5-lessons-weve-learned-using-aws.html)
is another example.  It might be counterintuitive but it certainly seems to work.

And that's why scraper stalls are a normal part of life.
They happen occasionally, get crushed like a minor irritation,
and things go back to normal.

If you notice a stall, first smile because it's an indication that
script authors are innovating.  Vim is still thriving.
Then, if nothing appears to be happening, help the scraper yell for help.


### Postscript

I must say, I'm surprised that vim-scripts works as well as it does.  Web scraping is
messy business that continually breaks at random and inopportune times.
Add to that the complete free-for-all that is vim.org/scripts
(rename your script at any time, invent your own way of deleting your scripts,
no standard archive or plugin format, etc) and, in theory, you have an inky soup that just won't
convert into Pathogened git repositories.  Last August I was starting to worry
that every morning I would wake up and immediately need to fix all the
scrape problems created uring the previous day.

Happily, script authors tend to make the same mistakes and find the same solutions as one other.
If I find a workaround for one script, ten unrelated scripts might be also be fixed (five
of which haven't even been written yet).

It was rocky going at first, but once the scraper reached a certain maturity,
it proved that it could wade through the soup almost completely on its own.

Of course, the scraper will never be complete, and there will always be stalls.
But, when I go on a two week vacation, I'll be surprised if things are
stalled when I get back.  And that's good enough!

