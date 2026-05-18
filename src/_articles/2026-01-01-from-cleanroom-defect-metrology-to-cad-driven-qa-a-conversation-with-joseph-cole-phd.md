---
layout: article
title: 'From Cleanroom Defect Metrology to CAD-Driven QA: A Conversation with Joseph Cole, PhD'
slug: from-cleanroom-defect-metrology-to-cad-driven-qa-a-conversation-with-joseph-cole-phd
author: samantha-town
tags:
- computer-vision
- robotics
- algorithms
- pytorch
- training-data-collection
- yolo-networks
- convolutional-neural-networks
- defect-detection
- cad
- machine-vision
published_at: '2026-01-01T18:00:00Z'
image: "/images/articles/from-cleanroom-defect-metrology-to-cad-driven-qa-a-conversation-with-joseph-cole-phd/cover.JPG"
---

In a recent internal interview, I sat down with RCR Cofounders **Duncan Miller** and **Joseph Cole, PhD** to unpack something Joe knows firsthand: what it really takes to make defect detection work in production.

Joe spent five years at Applied Materials building and tuning defect metrology algorithms for wafer inspection, including work that supported Intel. The imaging hardware was extreme (UV microscopes, electron microscopes, wafer scanning), but the workflow problems are the same ones we see in high-mix manufacturing today: missed defects, brittle tuning, slow dataset creation, and inspection logic that breaks when the part changes.

That’s why we built **RoseVision CAD Studio** around a simple premise: **build inspection from CAD** instead of waiting for defects to show up, then scrambling to label and tune your way out.&nbsp;

**The setup: “We’re not catching this defect”**

Duncan started by asking Joe which part of his background maps most directly to what we’re building now. Joe didn’t hesitate: **defect metrology and defect detection** was the work.

In that world, a customer would come back with a concrete problem: _“We’re not catching this kind of defect.”_ Joe would receive a small number of examples, sometimes a couple images, sometimes a full inspection dataset, and then do what most factories still do today, just at smaller scales:

- find the defect examples in the dataset

- label what matters

- tune detection parameters so the system actually catches them

- validate, ship the update, and repeat when the next miss shows up

It’s not glamorous, but it’s real. And it reveals the bottleneck: **manual iteration**.

**The physics is different, but the pain is the same**

Joe described working with both UV optical microscopy and electron microscopy.

- **UV optical imaging** still looks like a familiar microscope image. You get benefit from shorter wavelength light, which can resolve smaller features. An image is an image, the machine vision works the same.

- **Electron microscopy** isn’t light-based, and contrast depends strongly on material interactions. But operationally, you still end up with image files that must be processed, segmented, and compared.

The key takeaway wasn’t “you need exotic sensors.” It was that **inspection fails in familiar ways no matter the sensor** if the workflow depends on fragile segmentation and endless retuning.

**What “tuning” really means: segmentation + statistics + outlier detection**

Joe broke down how a classic defect detection pipeline actually works in practice.

1. **Registration** : align a “good” reference image to the image you’re checking

2. **Segmentation** : split pixels into comparable populations (metal vs background, feature A vs feature B)

3. **Statistics / outlier detection** : learn distributions inside each segment and flag deviations beyond thresholds (three-sigma, four-sigma cutoffs)

This is where factories bleed time. If segmentation isn’t stable, you get false positives. If false positives spike, operators lose trust. If operators lose trust, the station stops being a control point and becomes background noise.

Joe also pointed out the uncomfortable truth: threshold decisions require process knowledge. Someone has to decide what matters, what’s cosmetic, what’s functional, and what “out of bounds” really means.

**Registration: the step that quietly breaks your whole system**

One of the most valuable parts of the interview was Joe’s emphasis on **registration**.

CAD looks perfect. Real parts never do.

Even on wafers, “perfect right angles” in CAD become rounded fabricated lines. In factory environments, you see the same mismatch with molded edges, cast surfaces, formed sheet metal, and CNC features. If your CAD or reference image doesn’t align to the real image, then:

- segmentation gets noisy

- distributions widen

- outlier thresholds become harder to set

- defect localization drifts

Joe’s lived experience was blunt: rule-based registration caused constant frustration, especially when teams were hesitant to adopt newer learning-based approaches.

For us at RCR, that lines up with what we tell manufacturers: **inspection stability isn’t a camera problem. It’s an alignment + modeling problem.**

**Why CAD matters: it’s pre-labeled geometry**

Joe described the “aha” behind CAD-driven approaches in defect detection: **CAD is pre-labeled**.

When CAD defines what every region _is_, segmentation becomes dramatically easier. You don’t have to guess whether a darker patch belongs to the feature or the background. You don’t have to build brittle heuristics to separate overlapping distributions. CAD provides structure.

That is the backbone of RoseVision CAD Studio:

- train inspection from CAD/STEP

- make inspection logic update when CAD updates

- reduce the dependency on hand-labeling and fragile pixel rules&nbsp;

**Detection vs classification: don’t mix them up**

Joe and Duncan also clarified something that gets blurred in a lot of vendor messaging:

- **Defect detection** : find where something looks wrong

- **Defect classification** : determine what kind of defect it is

In Joe’s Applied workflow, detection could work without classification. Classification was a second stage applied after defects were already circled.

That maps cleanly to modern model families:

- object detection models (like YOLO-style approaches) can output bounding boxes

- segmentation models (like U-Net-style architectures) can label pixel-level defect regions

The point isn’t the acronym. The point is that modern architectures reduce the amount of manual feature engineering and threshold babysitting.

**Humans label more consistently when the model suggests first**

Joe shared a practical finding from classification work: humans disagree on borderline cases. But when a model makes a first-pass suggestion, human review becomes more consistent.

That matters in any factory where “acceptable” vs “reject” is partly judgment-driven. The model doesn’t remove humans. It reduces drift and fatigue effects by turning the job into **review and adjudication** , not repetitive labeling from scratch.

**Synthetic data and simulation: “model before mold” is operational, not aspirational**

A major theme in the interview was using simulation to reduce the cold-start problem.

Joe and Duncan discussed workflows where you can:

- generate a dataset of “good” images

- simulate defect variations

- train earlier, before real defects show up in volume

- reduce or eliminate manual labeling because synthetic data is already labeled by construction

Tools like Isaac Sim and Blender came up, along with the practical advantage of headless rendering for generating lots of training data quickly.

This is why our positioning uses phrases like **model before mold** and **inspect from day one**. We’re not trying to sound clever. We’re describing a different timeline: build inspection logic from design intent, then validate against real production variance when parts arrive.&nbsp;

**What this tells us about RoseVision CAD Studio**

Joe’s semiconductor experience compresses the lesson we see repeatedly in high-mix industrial QA:

- If you start from images, you inherit the labeling burden.

- If you start from rules, you inherit brittleness.

- If you start from CAD, you can anchor segmentation and inspection logic to geometry, then adapt as the design changes.

That is the core promise of RoseVision CAD Studio: **CAD goes in, inspection logic comes out** , supported by engineers who have built these systems under real constraints.&nbsp;

And it’s not theoretical. Joe’s track record includes industrial defect detection and vision algorithm development across real deployments.&nbsp;

**If you’re living the same failure mode**

If your current inspection approach looks like this:

- missed defect appears downstream

- scramble for images

- label a small dataset

- tune thresholds until it “sort of works”

- lose stability when the part or lighting shifts

We should talk.

Send us a STEP file and we’ll tell you quickly if CAD-driven inspection is a fit, and what it would take to deploy on your line.
