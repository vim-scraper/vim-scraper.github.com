---
layout: default
title: FAQ
---


### For Script Users

**Q:** Can you fix a bug in one of your scripts?

**A:** Unfortunately there's nothing the vim-scripts mirror can
do about this.  You'll need to notify the script's author.  When
a fixed version of the plugin is released, vim-scripts will
happily mirror it.


**Q:** Why are all the files in the wrong places?<br/>
**Q:** Why doesn't this plugin work when I drop it in ~/.vim/bundles?

**A:** The scripts come in all sorts of weird formats and layouts.
The scraper fixes them the best it can but there are bound to
be a few that slip through the cracks.
<a href="http://github.com/vim-scripts/vim-scraper/issues">File an issue</a>
that describes how to fix things.


**Q:** Why can't I file an issue on a script?

**A:** The issues and wikis are turned off for all scripts because
there's little chance the script's original author would ever see them.
Still, some people have asked to them turned on even though
nobody might ever read them.  It's easy enough to change.
We just haven't made a final decision yet.


**Q:** I sent you a GitHub messsage.  Why don't you respond?

vim-scripts is just a robot.  The best way to discuss things
is by filing an issue on either the
<a href="http://github.com/vim-scripts/vim-scraper/issues">scraper</a> or
<a href="http://github.com/vim-scripts/vim-scripts.github.com/issues">documentation</a>.


**Q:** Is the mirror up-to-date?

**A:** The scripts are updated multiple times per day from the
RSS feed.  The most recent changes can be seen on the
<a href="http://github.com/vim-scripts">GitHub page</a>,
and the most recent scrapes can be seen on **TODO TODO**.


**Q:** Why are there invisible changes to be committed when I clone a script?

**A:** This appears to be due to a one-time corruption.
<a href="http://github.com/vim-scripts/vim-scraper/issues">File an issue on the scraper</a>
and we'll regenerate the problematic repo.


### For Script Developers

**Q:** Can I point the vim-scripts repo at my official GitHub repo?<br/>

**A:** No, vim-scripts is simply a mirror of <a href="http://www.vim.org/scripts/index.php">Vim's site</a>.


**Q:** Can I send you some fixes for a script?

No, we only accept updates from the Vim scripts site.  When the fixes
appear in a new package on vim.org, they will quickly be mirroed here.


**Q:** My commits don't have my icon next to them.

**A:** The email address you used on the vim scripts site is probably different
from the one you're using on GitHub.  Go into your GitHub [account settings](https://github.com/account)
and add your vim email address as an alternate.

