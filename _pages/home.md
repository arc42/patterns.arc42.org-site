---
layout: default
title: Home
order: 0
permalink: /home/
---

{% assign nr_sec01_patterns = (site.posts | where: "category", "overall") | size %}
{% assign nr_sec02_patterns = (site.posts | where: "category", "dataflow") | size %}
{% assign nr_sec03_patterns = (site.posts | where: "category", "adaptive") | size %}
{% assign nr_sec04_patterns = (site.posts | where: "category", "interactive") | size  %}
{% assign nr_sec05_patterns = (site.posts | where: "category", "integration") | size %}
{% assign nr_sec06_patterns = (site.posts | where: "category", "stability") | size %}
{% assign nr_sec07_patterns = (site.posts | where: "category", "domain") | size %}
{% assign nr_sec08_patterns = (site.posts | where: "category", "workflow") | size %}
{% assign nr_sec10_patterns = (site.posts | where: "category", "design") | size %}

## Overview

Check out architecture patterns, organized by informal and intersecting **[categories](/categories)**:
(some patterns might belong to two or more categories, use the search button if in doubt...)


1. [**Overall System Structure**](/overall/): {{ nr_sec01_patterns }} patterns, e.g. Layers, Tiers, Master/Slave, Client/Server, Onion-Style, Hexagonal-Architecture, Domain-Model, Transaction-Script, Virtual Machine,  etc.
2. [**Data flow**](/dataflow/): {{ nr_sec02_patterns }} patterns, e.g. Pipes-and-Filter and its variants, Blackboard
3. [**Adaptive Systems**](/adaptive/): {{ nr_sec03_patterns  }} patterns, e.g. PlugIn, Broker, MicroServices
4. [**Interactive Systems**](/interactive/): {{ nr_sec04_patterns  }} patterns, e.g. Model-View-Controller, Model-View-ViewModel and their variants
5. [**Integration Patterns**](/integration/): {{ nr_sec05_patterns }} patterns, e.g. Publish-Subscribe, Messaging, Remote-Procedure-Call, Hub-and-Spoke etc.
6. [**Stability and Robustness Patterns**](/stability/): {{ nr_sec06_patterns }} patterns, e.g. Bulkhead, Timeout, Circuit-Breaker, Heartbeat, Handshake etc.
7. [**Domain Patterns**](/domain/): {{ nr_sec07_patterns }} patterns, e.g. Open-Host-Service, Published-Language, Anticorruption-Layer, Separate-Ways
8. [**Workflow Patterns**](/workflow/): TODO
10. [**Design Patterns**](/design/): {{ nr_sec10_patterns  }} patterns, e.g. Proxy, Adapter, Facade, Registry, Command, Factory, Observer

## Keywords
These patterns are tagged by [**{{ site.tags.size }} keywords**](/keywords) that will help you navigate:

{% capture site_tags %}{% for tag in site.tags %}{{ tag | first }}{% unless forloop.last %},{% endunless %}{% endfor %}{% endcapture %}
{% assign tag_words = site_tags |  split:',' | sort %}
<div id="tags">
  <ul class="tag-box inline">
  {% for tag in tag_words %}{% if tag == "cpsa-f" %}
       <li><a href="{{ site.baseurl }}/keywords/#{{tag}}"><font color="#dd354b"><b>{{ tag }}</b>
       <span>{{ site.tags[tag] | size }}</span></font></a></li>
    {% else %}
    <li><a href="{{ site.baseurl }}/keywords">{{ tag }}
    <span>{{ site.tags[tag] | size }}</span></a></li>
    {% endif %}
  {% endfor %}
  </ul>
</div>

One of this keywords ([<font color="#dd354b"><b>cpsa-f</b></font>](/keywords/#cpsa-f))
stands out - it denotes those patterns that are mentioned in
the [iSAQB](http://isaqb.org) software architecture foundation curriculum. Their knowledge might
be required in [CPSA-F](http://www.isaqb.org/certifications/foundation-level/) examinations.

## Literature disagreement

All of these patterns have been extensively documented in (paper-based and online) [literature](/references/).
The definition of styles or patterns heavily varies, depending on the original authors.


## <font color="#dd354b">We're offering architecture training!</font>

The _dynamic duo_, always two trainers in parallel, practically applicable
knowledge from Peter Hruschka and Gernot Starke. See [arc42.de](http://www.arc42.de/training.html) for details, and schedule.

We've successfully trained more than 1000 developers in software architecture,
many of them passed the [iSAQB CPSA-F](http://isaqb.org) certification.
(sorry - public training currently German-only, English for inhouse trainings.)
