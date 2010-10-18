---
layout: default
title: News
---

{% for post in site.categories.news %}
  <div class="post">
    <h2><a href="http://blog.favrik.com{{ post.id }}/">{{ post.title }}</a></h2>
    <p><strong>{{ post.date | date_to_string }}</strong></p>
    {{ post.content }}
  </div>
{% endfor %}

