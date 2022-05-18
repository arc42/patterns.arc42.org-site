---
layout: post
title: Pipes and Filter
tags: dataflow sequential cpsa-f  _TODO
category: dataflow
permalink: /patterns/pipes-filter/
---

## Pipes and Filter

### Context

Processing data streams.

### Problem

Building a system that pcoesses or transform data.  

### Solution

![](/images/patterns/pipes-and-filter.svg)

### Forces

*  Exchanging of processing steps or recombination of steps should be possible

*  Reusability of processing steps

*  No sharing of information between non-adjacent processing steps

*  Different sources of input data exists

*  Final results should be storable in various ways

*  Intermediade results for further processing should be handled by the system

*  Support of paralell running 

### Consequences

*  No intermediate files necessary, but possible

*  Flexibility by filter exchange

*  Flexibility by recombination

*  Reuse of filter components

*  Rapid prototyping of pipelines

*  Efficiency by parallel processing

### Liabilites

*  Sharing state information is expensive or inflexible

*  Efficiency gain by parallel processing is often a illusion

*  Data transformation overhead

*  Error handling
