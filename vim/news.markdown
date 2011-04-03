---
layout: default
title: News
rss: /feeds/news.xml
rsstitle: vim-scripts newsfeed
---

## News

{% for post in site.categories.news %}
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

<script type="text/javascript">
  var disqus_shortname = 'vimscripts';
  (function () {
    var s = document.createElement('script'); s.async = true;
    s.type = 'text/javascript';
    s.src = 'http://' + disqus_shortname + '.disqus.com/count.js';
    (document.getElementsByTagName('HEAD')[0] || document.getElementsByTagName('BODY')[0]).appendChild(s);
  }());
</script>
