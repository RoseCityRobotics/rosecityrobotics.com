---
layout: article
title: 'Robots that ask better questions: Information Pursuit as an explainable layer on top of learned embeddings'
slug: robots-that-ask-better-questions-information-pursuit-as-an-explainable-layer-on-top-of-learned-embeddings
author: duncan-miller
tags:
- robotics
- nvidia
- algorithms
- imitation-learning
- tensorflow
- computer-vision
- pytorch
- reinforcement-learning
- training-data-collection
- company-news
published_at: '2026-01-12T20:00:00Z'
image: "/images/articles/robots-that-ask-better-questions-information-pursuit-as-an-explainable-layer-on-top-of-learned-embeddings/cover.jpeg"
---

A lot of the newest “pixel-to-action” robotics demos look magical until you ask the uncomfortable question: **how much data did it take?** In one recent interview with Sharpa Robotics, the algorithm developer reported they used over&nbsp; **300 of hours of teleoperation data** to teach a robot a complex, multi-step task a human can do in 9 seconds.

That gap is the focus of [Joseph Cole's research with professors from the Maseeh Department of Mathematics and Statistics at Portland State University](https://rosecityrobotics.com/documents/RCR_PSU_NSF_Full_Proposal_Final.pdf): instead of trying to cover every edge case with more demonstrations, we want robots that can **reduce uncertainty on purpose** —by moving their sensor to gather the most informative next observation, and by showing their work as they do it.

The technical name for that is **Information Pursuit (IP)**.

### The shift: from “pixels → action” to “belief → information → action”

The core design choice is to treat perception as a **Bayesian inference loop** rather than a one-shot prediction. The robot maintains a belief (a posterior distribution) over a target state, then chooses the next sensor viewpoint to shrink that uncertainty as efficiently as possible. In robotics terms, IP becomes a principled “next-best-view” policy for active sensing, with obvious ties to applications like active SLAM and sensor placement.

Concretely, we model a camera mounted on a robot arm and define:

- (s): camera pose (position + orientation)

- (O(s\_t)): image captured at step (t)

- (X(s)): a learned **embedding** (latent feature representation) of the image

- (Z): the unknown target state we want to infer (pose/location/orientation)

The loop “Algorithm 1: Vision-driven Information Pursuit,” includes the key step: select the next camera pose by maximizing **mutual information** between the next observation and the target state.

### What makes this version of IP different: it runs in an embedding space

Classic IP work (including early foundations by Jedynak & Geman) selects a sequence of “queries” to efficiently identify a hidden variable. This proposal pushes that idea into modern robotics by making the query an embodied action (move the camera) and making the observation a point in a learned latent space rather than a raw pixel array.

In plain terms: choose the next view that is expected to reduce uncertainty the most.

That structure is why we kept using the word “imagination” in our founder conversation. If the embedding is meaningful and smooth, the robot can “mentally simulate” what different viewpoints would reveal and pick the one that should be most informative before it commits motion.

### The real technical risk: you don’t get smooth embeddings for free

If you want to navigate through a latent space like it’s a map, you need the latent space to behave like a map. Even if you train an embedding, there’s no guarantee that interpolating between two latent points corresponds to a valid intermediate physical state.&nbsp;

- What principles should guide building the embedding function (g) so it extracts task-relevant features and supports feasible exploration?

- How should we design the prior (p\_0(z)) so the robot doesn’t waste steps chasing unlikely hypotheses?

- How do we compute posteriors and mutual information **fast enough** for an online loop?

To bootstrap training data without an impossible teleop campaign, we generated and labelled images sythetically using **NVIDIA IsaacSim**. Physics simulators like IsaccSim, Blender and Unity provide a technical advance, enabling using CAD + simulation to “cold start” the perception model rather than collecting thousands of real-world demonstrations.

### Posterior updates without a closed-form likelihood

The posterior update is the make-or-break step in IP. In a perfect world, you’d write down a clean likelihood (P(x\_t \mid z)) and update analytically. In reality, that likelihood is often intractable.

The proposal explicitly takes the “simulation is available” route: when the likelihood can’t be evaluated, but can be **sampled via a digital twin** , use **likelihood-free inference** to estimate the posterior.

Phase I compares three families of methods:

- Approximate Bayesian Computation (ABC)

- Kernel mean embedding of conditional distributions (KMECD)

- Bayes rule by triangular transport (transport-map style inference)

This is one of the “non-flashy” but important contributions: IP sounds simple on a whiteboard, but making it run online requires posterior estimation methods that are both stable and computationally practical.

### Mutual information estimation and early stopping

Mutual information is the objective that decides where the robot looks next, but estimating MI robustly (especially from samples) is hard. The proposal treats MI estimation and early stopping as first-class problems, not afterthoughts.

This matters because “active sensing” can easily become “active thrashing” if MI estimates are noisy or if there’s no clear stopping condition. In factory environments, unnecessary motion isn’t just inefficient—it increases cycle time variance and creates more failure opportunities.

### Why this is inherently more explainable than end-to-end policies

One of the cleanest parts of IP is that the explanation is built into the mechanism:

- the robot’s belief state is explicit (the posterior over (Z))

- the reason for the next action is explicit (maximize expected information gain)

- the sequence of queries is a trace you can review

The proposal positions IP as a strategy for “efficient, interpretable prediction,” and contrasts it with reinforcement learning’s reward-driven policies.

It also draws a boundary between IP and the Free Energy Principle / Active Inference literature: both involve uncertainty reduction, but IP is framed as a more targeted, engineering-ready approach for explainable classification/localization rather than a grand biological theory.

### What this means for real factories

Even if you ignore the original demo use case, the underlying capability maps cleanly onto a set of factory problems that are currently painful:

#### Faster commissioning when you don’t have “300 hours” to spare

Most manufacturers don’t have the time—or appetite—to teleoperate a robot for weeks just to get a fragile model. An IP-driven system is designed to **use information strategically** : it can decide what it needs to see next instead of relying on exhaustive training coverage. In our internal framing: if you can turn “300 hours of training data” into something closer to “30,” you change the economics of automation entirely.

#### Debuggability you can actually use on the floor

When a system fails in production, the question isn’t “was the neural net confident?” The question is: **what did it think it saw, and why did it move?** IP gives you artifacts that map to engineering workflows: posterior uncertainty, MI scores, and a sequence of viewpoints. That’s the difference between a station you can maintain and a station you have to babysit.

#### Robustness to variation without rewriting rules every week

Factories are high-mix, high-variance environments. Parts shift. Lighting drifts. Fixturing wears. Operators intervene. IP is built around explicitly managing uncertainty, not pretending it doesn’t exist. The robot can respond to ambiguity by gathering a better view, instead of guessing and hoping the edge case was in the training set.

#### A path to “software-first automation” that isn’t a black box

We spend a lot of time thinking about QA and automation as software: versionable logic, measurable performance, and controlled deployment. IP fits that mindset. You can define priors using real domain constraints, validate embeddings with measurable criteria, and audit why the system chose a viewpoint—without resorting to hand-tuned, brittle rules.

#### Where this shows up in practice

IP-in-embedding-space is especially relevant anywhere a robot needs to localize or verify something under uncertainty:

- bin picking with occlusions

- inspection steps where a single view is unreliable

- rework/repair stations with variable part presentation

- assembly tasks where “is it seated?” is ambiguous without the right viewpoint

- any station where cycle time variance is driven by “looking again” in an unstructured way

The proposal is essentially a recipe for turning that “looking again” into a principled algorithm: **look again only when the math says it will buy you certainty.**

### Closing thought

The most practical promise here isn’t that robots will suddenly learn everything from a few demos. It’s that we can build systems that behave more like good engineers do: keep track of uncertainty, gather the next measurement that actually matters, and leave an audit trail that a human can understand.

That’s what we mean by Information Pursuit for robotics: not a buzzword, but a decision layer that makes perception more data-efficient, more monitorable, and ultimately more deployable on real factory floors.
