---
title: "What Should a Digital Twin Tell a Scheduler?"
date: 2025-06-12
permalink: /posts/2025/digital-twins-for-scheduling/
topic: "Research Notes"
tags:
  - digital twins
  - dynamic scheduling
excerpt: "Some reading notes on stale timestamps, missing resource states, and what a scheduler actually needs to know."
comments: false
related: false
---

{% comment %}Editorial draft: a general research reflection; no unpublished model or results are reproduced.{% endcomment %}

*A few notes from this week's reading. Still sorting out the last point.*

A digital twin diagram often makes the exchange between a workshop and its virtual representation look immediate. An arrow goes one way, an arrow comes back, and everything seems synchronized. I keep wondering what happens in the time hidden inside those arrows.

Suppose the system says a machine is free. That observation is useful, but I also want its timestamp. Was it recorded just now, before the last operation started, or before a temporary connection failure? A precise value can describe an old state very precisely.

I wrote down three things I would want next to a resource status:

- when it was observed;
- whether it was measured or estimated;
- what other conditions have to hold before the resource can be used.

The third point is easy to underestimate. A free machine is only part of the story if the job has not arrived or the worker needed for setup is unavailable.

**Another thought:** detecting a change and deciding to reschedule are separate steps. A short interruption might justify moving a few tasks. A longer one could invalidate much more of the plan. The updated state helps describe the problem; choosing the response still requires a decision about cost, timing, and the consequences of change.

---

There is also the simulation part. Being able to examine a candidate schedule in a virtual setting sounds useful, especially when there is time to compare alternatives. But the simulation inherits assumptions about processing times, resource behavior, and the quality of the incoming data. Agreement inside the simulation is not yet evidence that everything will happen that way in the workshop.

I would like to see the differences between prediction and execution recorded as carefully as the successful matches. They might tell us which part of the representation needs attention.

The unresolved bit in my notebook is this: **when should the system decide that its information is too old to support an automatic recommendation?** A fixed threshold seems convenient, but the acceptable delay probably depends on the resource and on what is happening. I have underlined it twice. That has not helped answer it.
