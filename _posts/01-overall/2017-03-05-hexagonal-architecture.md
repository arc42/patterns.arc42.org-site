---
layout: post
title: "Hexagonal Architecture"
tags: hierarchical-structure overall architectural-pattern ports-adapter
category: overall
permalink: /patterns/hexagonal/
---
Synonym: Ports-and-Adapter

## Intent

> Allow an application to equally be driven by users, programs, automated test or batch scripts, and to be developed and tested in isolation from its eventual run-time devices and databases.
  -- [Alistair Cockburn](http://alistair.cockburn.us/Hexagonal+architecture)


## Solution

Again, I quote the original author, Alistair:

> As events arrive from the outside world at a port, a technology-specific adapter converts it into a usable procedure call or message and passes it to the application. The application is blissfully ignorant of the nature of the input device. When the application has something to send out, it sends it out through a port to an adapter, which creates the appropriate signals needed by the receiving technology (human or automated). The application has a semantically sound interaction with the adapters on all sides of it, without actually knowing the nature of the things on the other side of the adapters.
  -- [Alistair Cockburn](http://alistair.cockburn.us/Hexagonal+architecture)

![](/images/patterns/hexagonal.svg)


## References

* The original article by [Alistair Cockburn](http://alistair.cockburn.us/Hexagonal+architecture)
* Jan Stenberg on infoQ: [Exploring the Hexagonal Architecture](https://www.infoq.com/news/2014/10/exploring-hexagonal-architecture)
* Discussion [on the C2 Wiki](http://wiki.c2.com/?HexagonalArchitecture)
