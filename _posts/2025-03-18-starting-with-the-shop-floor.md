---
title: "Before the Algorithm: Starting with the Shop Floor"
date: 2025-03-18
permalink: /posts/2025/starting-with-the-shop-floor/
topic: "Research Notes"
tags:
  - scheduling
  - research practice
excerpt: "Two machines, two operations, one worker. A small sketch that made me put the algorithm section aside for a while."
comments: false
related: false
---

{% comment %}Editorial draft: confirm the first-person research habits and industry reflections.{% endcomment %}

I opened a paper intending to look at its search operators and ended up drawing two rectangles in the margin instead. Two machines, two operations. It should have been a very small example.

Both operations could use either machine. Assign one to each and let them start together: tidy, efficient, finished. Then I added a worker who had to set up both operations. The simultaneous start disappeared. I added transport between stages, and another gap appeared on the timeline.

Nothing about the search method had changed. I had changed what counted as a possible schedule.

> “Machine available” is doing quite a lot of work in that sentence.

This is where I tend to lose time when reading. A term looks familiar, so I move past it, then discover several pages later that I have been imagining a different production process. Does a worker stay for the entire operation or only for setup? Can the job wait beside the machine? Is transport time included in processing time? The answers can change the model substantially.

### A note beside the notation

I have started writing a plain description of the process before trying to follow every symbol. Sometimes it is just a few arrows and a sentence: “The job has to arrive, the machine has to be free, and the right person has to be available.” If I cannot tell where an operation begins and ends, I am usually not ready to judge the algorithm.

There is a trap here too. Once I start adding detail, I can keep going indefinitely. Maintenance, breaks, buffers, shift changes—each seems reasonable. But the model needs a boundary. The useful question is which details affect the decision being studied, and which can be represented by a simpler assumption.

I do not have a neat rule for finding that boundary. Small examples help because I can inspect them without hiding behind a large instance. If an assumption changes the answer in a two-job sketch, I want to understand why before moving on.

The algorithm section is still waiting. There are now more arrows than rectangles in the margin.
