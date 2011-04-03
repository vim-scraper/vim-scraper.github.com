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
are still too new to be sure.  Enjoy using them and visit the
[Support tab](/vim/support.html) if you see any problems.


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


<div id="news" class="" >
 <h2><a href="/vim/news.html">Recent News</a></h2>
 {% for post in site.categories.news offset: 0 limit: 3 %}
<div class="post">
  <div class="header">
    <h4 class="title">
      <a href="{{ post.url }}">{{ post.title }}</a>
    </h4>
    <span class="date">{{ post.date | date_to_string }}</span>
 </div>

 <div class="content">
  {{ post.content | strip_html | truncatewords: 25 }}
  <a href="{{ post.url }}">→more</a>
 </div>
 <p><a href="{{ post.url }}#disqus_thread" data-disqus-identifier="{{ post.url }}">comments</a></p>
</div>
 {% endfor %}
</div>

<script type="text/javascript">
  var disqus_shortname = 'vimscripts';
  (function () {
    var s = document.createElement('script'); s.async = true;
    s.type = 'text/javascript';
    s.src = 'http://' + disqus_shortname + '.disqus.com/count.js';
    (document.getElementsByTagName('HEAD')[0] || document.getElementsByTagName('BODY')[0]).appendChild(s);
  }());
</script>
