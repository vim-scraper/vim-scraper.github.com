---
layout: default
title: About
rss: /feeds/news.xml
rsstitle: vim-scripts news feed
---

This is a mirror of all [scripts on vim.org](http://www.vim.org/scripts/).
It provides unified access to all
[available Vim scripts](http://github.com/vim-scripts/repositories)
using [Git].

<h2><blockquote><a href="http://github.com/vim-scripts/">The Scripts</a></blockquote></h2>

**NOTE: we are in a beta period.**
We expect that things will be stable from here on out but these repos
are still too new to be sure.  Enjoy using these scripts and report
any problems you see on the [issue tracker](http://github.com/vim-scripts/vim-scraper/issues)!

# Recent News

No news is good news!  The archives are <a href='/news.html'>here</a>.

{% for post in site.categories.news offset: 0 limit: 3 %}
  <div id='news'>
    <div class='newstitle'><a href="{{ post.url }}">{{ post.title }}</a></div>
    <p>{{ post.date | date_to_string }} &mdash; {{ post.content | strip_html | truncatewords: 25 }} (<a href="{{ post.url }}">Read more</a>)</p>
  </div>
{% endfor %}

# Tools

[Pathogen]'s simple approach to [Vim] plugins inspired this mirror.
Since then, others have written tools to make things even easier.

 * [vim-update-bundles](http://github.com/bronson/vim-update-bundles)
   is a small ruby script that makes it easy to set up and manage [Pathogen].
 * [vundle](http://github.com/gmarik/vundle) is similar and 100% vimscript.

See the [Faq] for more.

# Updates

Visit [GitHub page](http://github.com/vim-scripts/) or grab the [feed](http://github.com/vim-scripts.atom)![feed](http://github.com/images/icons/feed.png) to stay updated on recent activity.

[Pathogen]:http://github.com/tpope/vim-pathogen
[Vim]:http://vim.org
[Git]:http://git-scm.com
[Ruby]:http://ruby-lang.org
[Faq]:/faq.html

