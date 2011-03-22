---
layout: default
title: News
rss: /feeds/news.xml
rsstitle: vim-scripts newsfeed
---

{% for post in site.categories.news %}
<div class="post">
  <h2 class="title">
    <a href="{{ post.url }}">{{ post.title }}</a>
  </h2>
  <a href="{{ post.url }}#disqus_thread" data-disqus-identifier="{{ post.url }}">comments</a>
  <p class="content">
    <span class="date">{{ post.date | date_to_string }}</span>
      {{ post.content | strip_html | truncatewords: 25 }}
    <a href="{{ post.url }}">→more</a>
  </p>
</div>
{% endfor %}

<script type="text/javascript">
  var disqus_shortname = 'vimscripts';
  (function () {
    var s = document.createElement('script'); s.async = true;
    s.type = 'text/javascript';
    s.src = 'http://' + disqus_shortname + '.disqus.com/count.js';
    (document.getElementsByTagName('HEAD')[0] || document.getElementsByTagName('BODY')[0]).appendChild(s);
  }());
</script>
