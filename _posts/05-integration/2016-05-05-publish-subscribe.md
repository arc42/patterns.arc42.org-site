---
layout: post
title: Publish Subscribe
tags: integration _TODO cpsa-f
category: integration
permalink: /patterns/publish-subscribe/
---

#### Problem

How can the sender broadcast an event to all interested receivers?

#### Solution

Send the event on a Publish-Subscribe Channel, which delivers a copy of a particular event to each receiver.

* Senders of messages, called publishers, characterize published messages into classes without knowledge of subscribers
* Subscribers express interest in one or more classes of messages and only receive messages that are of interest, without knowledge of which publishers.

#### References

* [Hohpe+03](http://www.enterpriseintegrationpatterns.com/patterns/messaging/PublishSubscribeChannel.html)
* [Wikipedia](https://en.wikipedia.org/wiki/Publish%E2%80%93subscribe_pattern)
* [Microsoft Patterns and Practices](https://msdn.microsoft.com/en-us/library/ff649664.aspx)
