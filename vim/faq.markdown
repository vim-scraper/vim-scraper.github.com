---
layout: default
title: FAQ
comments: true
---


## For Script Users

**Q:** Can you fix a bug in one of your scripts?

**A:** Unfortunately there's nothing the vim-scripts mirror can
do about this.  You'll need to notify the script's author.  When
a fixed version of the plugin is released the scraper will
automatically mirror it.


**Q:** Why are all the files in the wrong places?
Why doesn't this plugin just work when I drop it in ~/.vim/bundles?

**A:** It should.  Scripts come in all sorts of weird formats and layouts
and the scraper corrects them the best it can.  It probably just got confused.
[File an issue](/vim/support.html)
and we'll fix the scraper and regenerate the script.


**Q:** I sent you a messsage or pull request.  Why don't you respond?

**A:** vim-scripts is just a robot.


**Q:** Is the mirror up-to-date?

**A:** The scripts are updated multiple times per day from the
RSS feed.  The most recent changes can be seen on the
<a href="http://github.com/vim-scripts">GitHub page</a>.


## For Script Developers

**Q:** Can I point the vim-scripts repo at my official GitHub repo?<br/>

**A:** No, vim-scripts is simply a mirror of <a href="http://www.vim.org/scripts/index.php">Vim's site</a>.
The best thing to do is put your GitHub URL at the top of your script's
description on vim.org.  This will ensure that it appears at the top
of your script's README on GitHub.


**Q:** My commits don't have my GitHub icon next to them.

**A:** The email address you used on vim.org is probably different
from the one you're using on GitHub.  Go into your GitHub [account settings](https://github.com/account)
and add your vim account's address as an alternate.


**Q:** Why is my name just a garbled mass of letters in my commits?

**A:** Like [this commit](http://github.com/vim-scripts/update_vim/commit/4c3e52b0c6c42a30ac58fd7121fb01e42e66e0b6)
from Ľubomír Host?
You probably have a non-ascii character in your email address.
GitHub doesn't currently display internationalized email addresses.
There's a [feature request](http://support.github.com/discussions/suggestions/192-github-should-decode-names-in-international-email-addresses).

