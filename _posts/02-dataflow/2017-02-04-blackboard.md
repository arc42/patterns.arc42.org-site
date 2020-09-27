---
layout: post
title: Blackboard
tags: dataflow cpsa-f  _TODO
category: dataflow
permalink: /patterns/blackboard/
---

## Blackboard

### Context

An immature domain in which no closed approach to a solution is known or feasible.

### Problem

No feasible deterministic solution for data transformation into high-level data structures. The domain has uncertain or approximate knowledge. The transformations can result into many alternatives.

### Forces

*  A complete search of the solution space is not feasible in a reasonable time

*  Immature Domain

*  Different algorithms that solve partial problems

*  Input, as well as intermediate and final results, have different representations

*  An algorithm usually works on the results of other algorithms

*  Uncertain data and approximate solutions are involved

*  Employing disjoint algorithms induces potential parallelism

### Consequences

*  Experimentation

*  Support for changeability and maintainability

*  Reusable knowledge sources

*  Support for fault tolerance and robustness

### Liabilites

*  Difficulty of testing

*  No good solution is guaranteed

*  Difficulty of estabilishing a good control strategy

*  Low Efficiency

*  High devlopment effort

*  No support for parallelism

