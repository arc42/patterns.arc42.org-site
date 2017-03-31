---
layout: page
title: 2 - Dataflow
permalink: /dataflow/
order: 12
---
>Dataflow architectures view an entire software system
as a series of transformations on successive sets of data.
>Each of these sets is independend of the others.
>The software is decomposed in data processing elements where data directs the order of computation and processing.
> -- Kai Quian et. al,

In such architectures, data can either flow in linear fashion,
or in cycles or any other topology of processing elements.
Regardless of the structure, data always moves from one element
to another. There is usually no other interaction or dependency
between the processing elements than these data connectors.

These connections can be implemented in various ways (I/O streams,
  sockets, files, queues or other means).

See also the [integration patterns](/integration).  


<div id="search-results">
    <hr id="first-hr" class="with-no-margin"/>


    {% assign selected_posts = (site.posts | where: "category", "dataflow") | reverse %}
    {% for post in selected_posts  %}
    <div class="article-wrapper">
        <article>
            {% include article-header.html page=post link=true share=false %}
        </article>
    </div>
    <hr class="with-no-margin"/>
    {% endfor %}
</div>
