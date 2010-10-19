---
layout: default
title: News
rss: /feeds/news.xml
rsstitle: vim-scripts news feed
---

{% for post in site.categories.news %}
  <div class="post">
    <h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
    <p><strong>{{ post.date | date_to_string }}</strong></p>
    {{ post.content }}
  </div>
{% endfor %}

