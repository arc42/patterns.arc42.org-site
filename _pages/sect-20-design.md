---
layout: page
title: 12 - Design Patterns
permalink: /design/
order: 27
---

Here you find generally applicable _design patterns_, which should be independend
of programming language or -technology.

<div id="search-results">
    <hr id="first-hr" class="with-no-margin"/>


    {% assign selected_posts = (site.posts | where: "category", "design") | reverse %}
    {% for post in selected_posts  %}
    <div class="article-wrapper">
        <article>
            {% include article-header.html page=post link=true share=false %}
        </article>
    </div>
    <hr class="with-no-margin"/>
    {% endfor %}
</div>
