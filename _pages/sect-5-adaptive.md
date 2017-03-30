---
layout: page
title: 5 - Adaptive Systems
permalink: /adaptive/
order: 16
---

<div id="search-results">
    <hr id="first-hr" class="with-no-margin"/>


    {% assign selected_posts = (site.posts | where: "category", "adaptive") | reverse %}
    {% for post in selected_posts  %}
    <div class="article-wrapper">
        <article>
            {% include article-header.html page=post link=true share=false %}
        </article>
    </div>
    <hr class="with-no-margin"/>
    {% endfor %}
</div>
