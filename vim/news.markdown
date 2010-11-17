---
layout: default
title: News
rss: /feeds/news.xml
rsstitle: vim-scripts news feed
---

{% for post in site.categories.news %}
<div class="post">
 <h2 class="title"><a href="{{ post.url }}">{{ post.title }}</a></h2>
 <p class="content">
  <span class="date">{{ post.date | date_to_string }}</span>
    {{ post.content | strip_html | truncatewords: 25 }}
  <a href="{{ post.url }}">→more</a>
 </p>
</div>
{% endfor %}

