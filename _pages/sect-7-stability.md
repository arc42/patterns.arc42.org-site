---
layout: page
title: 7 - Stability Patterns
permalink: /stability/
order: 18
---

Stability, availability

<div id="search-results">
    <hr id="first-hr" class="with-no-margin"/>


    {% assign selected_posts = (site.posts | where: "category", "stability") | reverse %}
    {% for post in selected_posts  %}
    <div class="article-wrapper">
        <article>
            {% include article-header.html page=post link=true share=false %}
        </article>
    </div>
    <hr class="with-no-margin"/>
    {% endfor %}
</div>
