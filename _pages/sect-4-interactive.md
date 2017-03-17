---
layout: page
title: 4 - Interactive Systems
permalink: /interactive/
order: 14
---

<div id="search-results">
    <hr id="first-hr" class="with-no-margin"/>


    {% assign selected_posts = (site.posts | where: "category", "interactive") | reverse %}
    {% for post in selected_posts  %}
    <div class="article-wrapper">
        <article>
            {% include article-header.html page=post link=true share=false %}
        </article>
    </div>
    <hr class="with-no-margin"/>
    {% endfor %}
</div>
