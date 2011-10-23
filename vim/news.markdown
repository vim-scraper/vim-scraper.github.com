---
layout: default
title: News
rss: /feeds/news.xml
rsstitle: vim-scripts newsfeed
---

## News

<div id="news">
  <ul class="posts big-list hfeed">
  {% for post in site.categories.news %}
    <li>
      <article class="post hentry">
        <header><h1 class="entry-title"><a href="{{ post.url }}">{{ post.title }}</a></h1></header>
        <footer><time datetime="{{ post.date | date_to_string }}" class="updated" pubdate>{{ post.date | date_to_string }}</time></footer>
        <p class="entry-content">{{ post.content | strip_html | truncatewords: 25 }} <a href="{{ post.url }}" class="bookmark" rel="bookmark">more &raquo;</a></p>
      </article>
    </li>
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
