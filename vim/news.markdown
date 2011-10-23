---
layout: default
title: News
rss: /feeds/news.xml
rsstitle: vim-scripts newsfeed
---

## News

<div id="newslist">
  <table>
  {% for post in site.categories.news %}
    <tr class="post">
      <td><h1 class="entry-title"><a href="{{ post.url }}">{{ post.title }}</a></h1></td>
      <td><time datetime="{{ post.date | date_to_string }}" class="updated" pubdate>{{ post.date | date_to_string }}</time></td>
      <td>{% if post.author %}<span class="author">{{ post.author }}</span>{% endif %}</td>
    </tr><tr>
      <td colspan="3">
        <p class="entry-content">{{ post.content | strip_html | truncatewords: 25 }} <a href="{{ post.url }}" class="bookmark" rel="bookmark">more &raquo;</a></p>
      </td>
    </tr>
  {% endfor %}
  </table>
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
