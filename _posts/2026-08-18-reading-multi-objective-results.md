---
title: "Reading Multi-Objective Results with a Little More Care"
date: 2026-08-18
permalink: /posts/2026/reading-multi-objective-results/
topic: "Research Notes"
tags:
  - multi-objective optimization
  - scheduling
excerpt: "A tiny table, an unavailable worker, and several reasons to look twice before deciding which optimization result is better."
comments: false
related: false
---

{% comment %}Editorial draft: all numbers below are fictional teaching examples, unrelated to unpublished experimental results.{% endcomment %}

Start with a very small table. These are **invented teaching numbers**, unrelated to any manuscript or experiment.

| Candidate plan | Completion time | Cost |
| --- | ---: | ---: |
| A | 10 hours | 120 units |
| B | 12 hours | 100 units |
| C | 13 hours | 130 units |

For these two objectives, with both minimized, A and B offer a trade-off. C is dominated: either A or B is better on both measures. That tells us something useful, but it still does not choose between A and B.

Is saving two hours worth twenty units? It depends on the decision. A deadline, a budget, or the availability of extra capacity might settle it. Without that context, calling either plan “best” adds a preference that the table itself does not contain.

Now imagine that A requires a worker who is not available. Cross it out. Its objective values have not changed, but its relevance certainly has.

## The plot is only part of the evidence

When looking at an algorithm comparison, I want to know whether the candidate solutions satisfy the same constraints and whether the methods had comparable computational budgets. A pleasing Pareto plot can make it easy to skim past those details.

Stochastic runs complicate the picture too. One run may find an excellent set of alternatives while another struggles. A reported average, the spread across runs, and the time required each tell a different part of that story.

There is a small distinction I keep returning to: a method can be useful for overnight planning and unsuitable for a recovery decision that has to be made quickly. Runtime is part of the application context, not just a line at the bottom of the results table.

**A margin note on hypervolume.** I need to read the reference-point and normalization choices before interpreting the values. When comparing methods on the same problem, those choices should be consistent and explained. Across different instances, the scales may differ enough that the raw numbers do not carry the same meaning.

I sometimes go back from the indicators to one or two actual schedules. What changes between them? More overtime? Different transport arrangements? Many reassigned operations? That is where a numerical trade-off begins to acquire a practical meaning.

*Next thing to look up: how preference information can be introduced after a solution set has been generated, without pretending the preference was built into the objectives all along.*
