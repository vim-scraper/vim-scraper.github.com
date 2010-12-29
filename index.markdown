---
layout: default
title: About
rss: /feeds/news.xml
no_title: true
rsstitle: vim-scripts news feed
---


<div id="news" class="grid_5" style="float:right; padding-left:3em; padding-bottom:3em;">
  <h1><a href="/news.html">Recent News</a></h1>
  {% for post in site.categories.news offset: 0 limit: 3 %}
  <div class="post">
    <h4 class="title"><a href="{{ post.url }}">{{ post.title }}</a></h4>
    <p class="content">
    <span class="date">{{ post.date | date_to_string }}</span>
    {{ post.content | strip_html | truncatewords: 25 }}
    <a href="{{ post.url }}">→more</a>
    </p>
  </div>
  {% endfor %}
</div>

# About

This mirror provides access to any of the scripts
[on vim.org](http://www.vim.org/scripts/) using
[Git](http://git-scm.com/).
It was inspired by
[Pathogen's](http://github.com/tpope/vim-pathogen)
simple approach to
[Vim](http://vim.org/) plugins.


**NOTE: we are in a beta period.**
We expect that things will be stable from here on out but these repos
are still too new to be sure.  Enjoy using them and report
any problems you see on the [issue tracker](http://github.com/vim-scripts/vim-scraper/issues)!


## Usage

See the [All Scripts](/vim/scripts.html) tab above.

It's pretty easy to clone plugins into your ~/.vim/bundles directory
and have them immediately available for use via Pathogen.

Still, it can be even easier.  See [Vim Plugin Managers](/vim/tools.html).


## Subscribe

* site [news](/vim/news.html) [feed](/feeds/news.xml)![feed](http://github.com/images/icons/feed.png)
* [scripts feed](http://github.com/vim-scripts.atom)![feed](http://github.com/images/icons/feed.png) or follow the [vim-scripts user](http://github.com/vim-scripts/)
* [scraper feed](http://github.com/vim-scripts/vim-scraper/commits/master.atom)![feed](http://github.com/images/icons/feed.png) or watch the [vim-scraper](http://github.com/vim-scripts/vim-scraper) project
* or subscribe to your favorite [scripts](http://github.com/vim-scripts/) feeds 
