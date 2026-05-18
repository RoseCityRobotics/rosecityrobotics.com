---
layout: article
title: How Joseph Cole Builds Vision Systems That Survive Variance
slug: how-joseph-cole-builds-vision-systems-that-survive-variance
author: duncan-miller
tags:
- machine-vision
- computer-vision
- algorithms
- robotics
published_at: '2026-01-05T20:00:00Z'
image: "/images/articles/how-joseph-cole-builds-vision-systems-that-survive-variance/cover.jpg"
---

When people say “computer vision“ or “machine vision“ they usually picture a camera pointed at a part, a neural network, and a bounding box.

Joseph Cole, PhD doesn’t start there.

Joe starts one layer deeper: **how the signal is formed in the first place** , what constraints the hardware imposes, and what “correct” really means when the factory doesn’t behave like a demo.

We sat down to talk through a handful of stories from Joe’s career, from missile-defense satellites to ultrasound beamforming to edge inference on small hardware. The thread that kept showing up was simple:&nbsp;

Vision systems survive variance **when they’re engineered like measurement systems** , not tuned like one-off camera setups.

**Vision is physics before it’s software**

I asked Joe what felt like a dumb question at the time: _why do you need a physics simulator to generate images?_

He didn’t hesitate: “ **The way the image will ultimately look depends on the physics of how it’s generated.** ”

That answer matters more than it sounds.

In some systems, “an image” is literally the result of knocking electrons off materials and sensing how many come back. In others, it’s photons reflecting off surfaces. In others, it’s sound waves reflecting back to a sensor array. Different domains, same reality: the pixel values are downstream of physics.

Joe put it plainly: with visual cameras, you’re “just collecting light,” and even that is physics. Optics is often “ray-based physics,” which is why photorealistic renderers can predict what scenes look like by simulating how light bounces. And then there’s the messy stuff you can’t ignore forever: diffraction, absorption, and more complicated interactions that show up in real environments.

If you’re building inspection that has to work on a production line, this is the difference between:

- “We can make it work under this lighting,” and

- “We can predict what changes will break it, and engineer around those.”

That’s the first ingredient in “surviving variance.”

**Beamforming: the cleanest example of model-first vision**

The most concrete example Joe gave was ultrasound, because it forces you to respect the signal chain.

In ultrasound imaging, you transmit a pulse and record echoes. But to form an image, you need to map those recordings back into pixels. That means you have to know **where in the recording a specific part of the scene shows up** , based on timing and geometry. Then you combine contributions from multiple transmits and reflections to build up the image.

I asked if that’s “machine learning.”

Joe was direct: “ **No, it’s really not machine learning.** ”

It’s modeling, timing, and integration. And importantly, it’s testable.

To validate the image formation, they use a “phantom,” a reference object with known reflector locations. Put the transducer on it, generate the image, and confirm it matches what should be there. You can measure echo widths and check whether they line up with the expected wavelength and reflector size.

That method is boring in the best way. It’s also how you build inspection systems that don’t drift into mystery.

**Where machine learning actually fits**

Joe’s take on ML was also refreshingly grounded.

Machine learning can help with things like:

- highlighting structures for a practitioner,

- building confidence measures,

- and handling problems where the data volume explodes, like pushing from 2D to 3D imaging.

But he drew a useful line: “machine learning is still just statistics,” typically applied to larger datasets where you need computers to handle the scale. The real experts, he noted, are the ones who understand the statistical foundation, not just how to fine-tune a model.

That’s the second ingredient in “surviving variance”:

Treat ML as a tool inside an engineered measurement pipeline, not as the pipeline itself.

### A career pattern: sensor data → model → image → decision

As we kept talking, I realized Joe’s resume reads like four different careers—defense, geophysics, medical imaging, semiconductor metrology—but the work is the same problem wearing different clothes.

No matter the industry, Joe keeps landing in the same loop:

take raw sensor data → fit a model to it → turn it into an image (or a volume) → make a decision that holds up in the real world.

#### Missile defense at Northrup Grumman: prediction from sparse signals

Early on, Joe worked on missile-defense algorithms tied to infrared satellites. The satellite sees flashes—blips in time and space—and the job is to fit a trajectory model and extrapolate where it’s headed. Joe described it as heavy geometry and regression: take imperfect points and fit a model without over-assuming the data behaves nicely.

What stuck with me wasn’t the math—it was the constraint reality. Some of the underlying systems were designed decades ago. Hardware doesn’t refresh mid-flight. You ship an algorithm that has to work inside strict compute, power, and reliability constraints.

That’s a recurring theme in Joe’s version of “vision”: it’s never just accuracy. It’s accuracy **inside constraints**.

#### Seismic imaging at CGGVeritas: building 3D worlds from huge arrays

Later, Joe moved into seismic imaging at CGGVeritas. Ships drag sensor arrays behind them, fire acoustic sources, and record reflections off subsurface layers. One line of sensors gives you a slice; multiple streamers and a sweep across an area builds a full 3D volume.

And then you hit a very familiar bottleneck: humans interpret the imagery—tracing fault lines and layers—and that interpretation loops back into improving the imaging pipeline.

Different domain, same pattern: massive sensor data → model → image/volume → decisions that somebody will stake money on.

#### Cardiac ultrasound at YorLabs: where “image quality” is a system requirement

Then we jumped to YorLabs, where Joe was the lead developer for beamforming and image processing on a cardiac ultrasound system built around NVIDIA Jetson-class hardware.

This is where his “vision survives variance” mindset becomes very literal.

Ultrasound is model-first by necessity. You transmit pulses, record echoes, and reconstruct images by mapping time-of-flight back into space. If you don’t model the physics and geometry correctly, you don’t get “sort of worse images”—you get wrong images.

And in a medical context, you can’t hide behind “it works most of the time.” Joe talked about frame rate, latency, pipeline architecture—because those are part of the product definition. Image quality isn’t a feature you sprinkle on later. It’s an engineered outcome.

That’s also where you see Joe’s skepticism of buzzwords. A lot of the core imaging pipeline isn’t machine learning. It’s signal processing, beamforming, and validation against known references.

#### Defect detection at Applied Materials (and Intel):&nbsp; metrology under real production pressure

The most direct bridge to what we build now came from Joe’s time at Applied Materials—five years building defect detection and defect metrology algorithms for wafer inspection, including work that supported Intel.

The imaging hardware is exotic—UV microscopes, electron microscopes, wafer scanning—but the workflow problems felt painfully familiar:

- a customer comes back with a miss: **“we’re not catching this defect”**

- you get a small number of examples (sometimes a couple images, sometimes a full dataset)

- you find and label what matters

- you tune detection parameters until it actually catches the issue

- you validate, ship, and repeat when the next miss shows up

It’s not glamorous, but it’s production reality.

And Joe kept circling back to the fragile step that quietly breaks everything: **alignment and registration.** CAD and design intent are perfect. Real fabricated geometry isn’t. If your reference and your live image don’t align cleanly, segmentation gets noisy, distributions widen, thresholds become guesswork, and localization drifts.

That’s the “variance tax” factories pay when inspection logic is built on brittle rules.

### Tying it together: why this career arc points straight at CAD-driven QA

By the end of this part of the conversation, the common thread wasn’t “images.” It was something more useful for a factory team:

Vision systems fail when they’re built as tuning exercises instead of measurement systems.

Across satellites, seismic, ultrasound, and wafers, Joe’s pattern is consistent:

- respect how the signal is formed

- model the geometry

- validate against known references

- ship within real constraints

- and design the workflow so iteration doesn’t become the bottleneck

That’s also the logic behind CAD-driven inspection. CAD is pre-labeled geometry. It gives you structure up front—what region is what, what “correct” looks like—so you’re not guessing with pixel heuristics and re-tuning every time the part changes.

It’s the same lesson Joe learned in the cleanroom, applied to high-mix manufacturing:

- If you start from images, you inherit the labeling burden.
- If you start from rules, you inherit brittleness.
- &nbsp;If you start from CAD, you anchor inspection logic to geometry and adapt as designs change.

#### Edge deployment: where vision becomes real

If there’s one place “variance” becomes unavoidable, it’s the edge.

Joe walked through an edge setup we’ve been working with a Raspberry Pi 5 with the AI HAT+ Halo accelerator, enabling onboard vision inference.

- the camera feeds data into a Raspberry Pi over CSI,

- the inference chip (in this case, a Halo accelerator) sits over PCIe,

- frames have to move from camera to Pi memory, then into the accelerator memory,

- the model is preloaded on the accelerator, and pixels become inputs to the network.

We talked about throughput, roughly 30 FPS. The harder part is everything around it: data movement, memory boundaries, and making the compiled model behave on the target hardware.

Then Joe explained the practical model lifecycle:

1. start from a pretrained model (in this example, YOLO weights trained on the COCO dataset),

2. replace the final layer for your classes,

3. train for enough epochs that the network actually learns your reality,

4. export via ONNX,

5. compile for the target chip.

And then comes the part most “AI vision” vendors gloss over: **quantization**.

Weights might start as 32-bit floats. Edge accelerators often want 8-bit or even 4-bit integers. That means approximation. You lose dynamic range. Accuracy can drop. But you get power efficiency and speed, which is the point of edge deployment.

As Joe put it, this is a “power versus speed” tradeoff. If you ignore it, you end up with a system that looks great on a workstation and fails in the station.

### Jetson vs small accelerators: it’s not religion, it’s requirements

We compared that setup to NVIDIA Jetson hardware.

One practical advantage Joe called out is memory behavior. On Jetson, CPU and GPU memory is shared. You don’t have to move frames across buses into a separate device’s memory. You place the data once and operate on it. That reduces overhead and latency.

Jetson also gives more flexibility in numeric formats. You can run higher precision when needed and optimize later if the requirements force it.

We also touched on a real-world consideration: lifecycle and lock-in. Some teams don’t want to build around a vendor’s support window. Sometimes the right answer is a Jetson. Sometimes it’s an x86 box. Sometimes, frankly, it’s a Mac mini if that fits the deployment environment.

Joe’s point was consistent: choose based on customer requirements, not trends.

**The inspection ladder: cosmetic vs functional**

One of the most interesting tangents was medical device inspection.

Joe described an idea for catheter handle QC where you automate the motion sweep. Instead of only looking for cosmetic defects, you measure function: bend response, rotation behavior, repeatability.

In medical devices, “cosmetic” can become functional fast. Coatings matter. Surface issues can become safety issues. Regulatory requirements care about contamination and process control.

That maps back to manufacturing in general: if your inspection is only cosmetic when the failure mode is functional, you’re solving the wrong problem with the right camera.

**What “surviving variance” actually means**

After the interview, here’s how I’d summarize Joe’s approach in one practical statement:

A vision system survives variance when it’s built as a model of the world, validated against known references, and deployed with full respect for hardware constraints.

That’s the posture we want RoseVision to embody:

- build inspection logic from CAD,

- treat QA like software you can version and adapt,

- deploy on practical edge hardware,

- and keep the system understandable enough that engineers can trust it.

If your current inspection workflow depends on constant threshold babysitting, you’re not alone. The alternative isn’t “more AI.” The alternative is **engineering the vision system the way you’d engineer a measurement process**.

If you want to pressure-test that on a real part, send us a STEP file and a defect list. We’ll tell you quickly whether a CAD-driven approach can make your inspection more stable on your line.
