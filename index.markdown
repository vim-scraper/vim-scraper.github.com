---
layout: default
title: About
rss: /feeds/news.xml
2col: true
rsstitle: vim-scripts news feed
---
<div markdown="1" class="grid_6">

# About

[This mirror](http://github.com/vim-scripts) provides access to any of the 
[scripts on vim.org](http://www.vim.org/scripts/) using [Git].
It was inspired by [Pathogen]'s simple approach to [Vim] plugins.

<h2><blockquote><a href="/scripts.html">The Scripts</a></blockquote></h2>

**NOTE: we are in a beta period.**
We expect that things will be stable from here on out but these repos
are still too new to be sure.  Enjoy using them and report
any problems you see on the [issue tracker](http://github.com/vim-scripts/vim-scraper/issues)!


# Usage

It's pretty easy to clone plugins into your ~/.vim/bundles directory
and have them immediately available for use via [Pathogen].

Still, it can be even easier.  See [Vim Plugin Managers](/tools.html).

</div>


<div id="news" class="grid_6">

<h1><a href="/news.html">Recent News</a></h1>

{% for post in site.categories.news offset: 0 limit: 3 %}
<div class="post">
    <h4 class="title"><a href="{{ post.url }}">{{ post.title }}</a></h4>
    <p class="content">
    <span class="date">{{ post.date | date_to_string }}</span>
    {{ post.content | strip_html | truncatewords: 25 }} 
    <span markdown="1">[→more]({{ post.url }})</span>
    </p>
</div>
{% endfor %}

[ →all news](/news.html)

</div>

<div markdown="1" class="grid_12">

# Updates

Watch the [news page](/news.html) or subscribe to
[its feed](/feeds/news.xml)![feed](http://github.com/images/icons/feed.png)
to keep track of what's happening on this mirror.  This should be
fairly low traffic.

To watch for updates to your favorite scripts, find them on GitHub
and either follow them or subscribe to their RSS feeds.  This way
you see changes to only the scripts that you're interested in.

If you want to see changes to every script, follow the
[vim-scripts user](http://github.com/vim-scripts/)
or subscribe to its
[RSS feeds](http://github.com/vim-scripts.atom)![feed](http://github.com/images/icons/feed.png).

Finally, if you want to keep track of just how the scripts are being
mirrored, follow the [vim-scraper](http://github.com/vim-scripts/vim-scraper)
project or its
[RSS feed](http://github.com/vim-scripts/vim-scraper/commits/master.atom)![feed](http://github.com/images/icons/feed.png).

</div>


[Pathogen]:http://github.com/tpope/vim-pathogen
[Vim]:http://vim.org
[Git]:http://git-scm.com
[Ruby]:http://ruby-lang.org
[Faq]:/faq.html

