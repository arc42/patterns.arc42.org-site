---
layout: default
title: Home
order: 0
permalink: /home/
---

{% assign nr_overall_patterns = (site.posts | where: "category", "overall") | size %}
{% assign nr_dataflow_patterns = (site.posts | where: "category", "dataflow") | size %}
{% assign nr_interactive_patterns = (site.posts | where: "category", "interactive") | size  %}
{% assign nr_integration_patterns = (site.posts | where: "category", "integration") | size %}
{% assign nr_adaptive_patterns = (site.posts | where: "category", "adaptive") | size %}
{% assign nr_domain_patterns = (site.posts | where: "category", "domain") | size %}
{% assign nr_stability_patterns = (site.posts | where: "category", "stability") | size %}
{% assign nr_resource_patterns = (site.posts | where: "category", "resource") | size %}
{% assign nr_workflow_patterns = (site.posts | where: "category", "workflow") | size %}
{% assign nr_design_patterns = (site.posts | where: "category", "design") | size %}

## Overview

Check out architecture patterns, organized by informal and intersecting **[categories](/categories)**:
(some patterns might belong to two or more categories, use the search button if in doubt...).

All of these patterns have been extensively documented in (paper-based and online) **[references](/references/)**.



1. [**Overall System Structure**](/overall/): {{ nr_overall_patterns }} patterns, e.g. Layers, Tiers, Master/Slave, Client/Server, Onion-Style, Hexagonal-Architecture, Domain-Model, Transaction-Script, Virtual Machine,  etc.
1. [**Data flow**](/dataflow/): {{ nr_dataflow_patterns }} patterns, e.g. Pipes-and-Filter and its variants, Blackboard
1. [**Interactive Systems**](/interactive/): {{ nr_interactive_patterns  }} patterns, e.g. Model-View-Controller, Model-View-ViewModel and their variants
1. [**Integration Patterns**](/integration/): {{ nr_integration_patterns }} patterns, e.g. Publish-Subscribe, Messaging, Remote-Procedure-Call, Hub-and-Spoke etc.
1. [**Adaptive Systems**](/adaptive/): {{ nr_adaptive_patterns  }} patterns, e.g. PlugIn, Broker, MicroServices
1. [**Domain Patterns**](/domain/): {{ nr_domain_patterns }} patterns, e.g. Open-Host-Service, Published-Language, Anticorruption-Layer, Separate-Ways
1. [**Stability and Robustness Patterns**](/stability/): {{ nr_stability_patterns }} patterns, e.g. Bulkhead, Timeout, Circuit-Breaker, Heartbeat, Handshake etc.
1. [**Resource Management Patterns**](/resource-management/): {{ nr_resource_patterns }} patterns, TODO
1. [**Workflow Patterns**](/workflow/): {{ nr_workflow_patterns }} patterns, TODO
1. [**Design Patterns**](/design/): {{ nr_design_patterns  }} patterns, e.g. Proxy, Adapter, Facade, Registry, Command, Factory, Observer

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

## Style? Pattern? Category?

The definition of styles or patterns heavily varies, depending on the original authors.

Several patterns (e.g. MicroServices) fit several categories.


## <font color="#dd354b">We're offering architecture training!</font>

The _dynamic duo_, always two trainers in parallel, practically applicable
knowledge from Peter Hruschka and Gernot Starke. See [arc42.de](http://www.arc42.de/training.html) for details, and schedule.

We've successfully trained more than 1000 developers in software architecture,
many of them passed the [iSAQB CPSA-F](http://isaqb.org) certification.
(sorry - public training currently German-only, English for inhouse trainings.)
