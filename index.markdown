---
layout: default
title: About
rss: /feeds/news.xml
rsstitle: vim-scripts news feed
---

## About

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


### Usage

See the [All Scripts](/vim/scripts.html) tab above.

It's pretty easy to clone plugins into your `~/.vim/bundles` directory
and have them immediately available for use via Pathogen.

Still, it can be even easier.  See [Vim Plugin Managers](/vim/tools.html).


### Subscribe

* site [news](/vim/news.html) [feed](/feeds/news.xml)![feed](http://github.com/images/icons/feed.png)
* [scripts feed](http://github.com/vim-scripts.atom)![feed](http://github.com/images/icons/feed.png) or follow the [vim-scripts user](http://github.com/vim-scripts/)
* [scraper feed](http://github.com/vim-scripts/vim-scraper/commits/master.atom)![feed](http://github.com/images/icons/feed.png) or watch the [vim-scraper](http://github.com/vim-scripts/vim-scraper) project
* or subscribe to your favorite [scripts](http://github.com/vim-scripts/) feeds 


{% if page.recent_news %}
<div id="recent-news">
  <h2><a href="vim/news.html">Recent News</a></h2>
  <ul class="posts big-list hfeed">
  {% for post in site.categories.news offset: 0 limit: 3 %}
    <li>
      <article class="post hentry">
        <header><h1 class="entry-title"><a href="{{ post.url }}">{{ post.title }}</a></h1></header>
        <footer><time datetime="{{ post.date | date_to_string }}" class="updated" pubdate>{{ post.date | date_to_string }}</time></footer>
        <p class="entry-content">{{ post.content | strip_html | truncatewords: 25 }} <a href="{{ post.url }}" class="bookmark" rel="bookmark">more &raquo;</a></p>
      </article>
    </li>
  {% endfor %}
</div>
{% endif %}



<script type="text/javascript">
  var disqus_shortname = 'vimscripts';
  (function () {
    var s = document.createElement('script'); s.async = true;
    s.type = 'text/javascript';
    s.src = 'http://' + disqus_shortname + '.disqus.com/count.js';
    (document.getElementsByTagName('HEAD')[0] || document.getElementsByTagName('BODY')[0]).appendChild(s);
  }());
</script>
