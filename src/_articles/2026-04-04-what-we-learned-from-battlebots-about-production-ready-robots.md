---
layout: article
title: What we learned from BattleBots about production-ready robots.
slug: what-we-learned-from-battlebots-about-production-ready-robots
author: duncan-miller
tags:
- robotics
- company-news
published_at: '2026-04-04T19:00:00Z'
image: "/images/articles/what-we-learned-from-battlebots-about-production-ready-robots/battlebots-backstage.jpg"
meta_description: A backstage tour at BattleBots taught us the real meaning of production-ready robotics — every robot has a fully fired-up backup. What that means for humanoid demos and robotic battery disassembly.
---

Last week the Rose City Robotics team was in Las Vegas. You know that place where everything that happens there stays there? You know what we did on our big night out? We got VIP tickets to BattleBots Destruct-a-thon. Yes, we are robot nerds.

I need to start with a confession, because the lesson doesn't land without it.

**Our robot died on stage**

On that very same trip, we ran a live humanoid robot demo at a conference. In front of an audience, our hardware failed. No dramatic sparks, no crowd-pleasing explosion — just a robot that wouldn't do the thing we came to show, and a room full of people watching us not show it, along with our customer who had paid us to make it happen.

Anyone who works in robotics knows this feeling. You test everything for countless hours, into the night and even minutes before. It works. Then the lights come on and physics votes differently. Our takeaway walking out of that conference: humanoid robots are not production ready. Ours included.

So that was the frame of mind we brought to Vegas — a little bruised, watching the most abused robots on the planet fight every night, twice a night, on a schedule.

**Then we got the backstage tour**

After the show we got to walk the pits, and I snapped the photo at the top of this article. It's not a glamour shot of a spinner — it's a clipboard. The drivers' run sheet for show #642. Look closely at the columns.

For every robot in the show — Malice, Kraken, Nightmare, HyperShock — there are two columns: **Primary** and **Backup**. Each with a unit number. For every match, they have two of every robot — fully equipped, fired up, and ready to go. Not a shell in a crate. Not a parts bin. A second complete, running machine, staged and warm, every single night.

These are teams with decades of combined build experience, running mature designs they've iterated on for years, in a controlled venue they perform in nightly. And their operating assumption is still: *the robot will fail, tonight, possibly twice.* The show goes on because the redundancy is designed into the operation, not because the hardware is trusted.

**How far we are from ready**

That clipboard reframed our failed demo for me. We showed up to a live event with one robot and a prayer. BattleBots — the people who know better than anyone on earth what robots do under pressure — would never do that. The most production-ready robotics operation we've ever seen isn't production-ready because its machines don't fail. It's production-ready because failure is scheduled, staffed, and staged for.

That's the honest state of robotics in 2026. If the pros need a fired-up backup for a three-minute match, think about what it takes to keep a robot working an eight-hour shift, every shift. When a vendor tells you their humanoid — or any robot — is ready for your production line, ask them one question: where's the second one?

**What this changes about how we build**

At Rose City Robotics we're building robotic systems for EV battery disassembly — an environment where a hardware failure isn't an awkward moment on stage, it's a stopped line next to a pack that can hold lethal voltage. The BattleBots lesson maps directly:

Assume failure and design the fallback first. Our system always has a human in the loop by design — an expert technician who can take over via teleoperation the moment the robot hits something it can't handle. The teleoperator is our Primary/Backup column. The line keeps moving, and every takeover becomes training data that makes the robot better.

Redundancy is an operations discipline, not a hardware feature. Two of everything, staged and warm, is a way of running — spare end effectors, hot-swappable components, a recovery plan that's rehearsed rather than improvised.

And humility is a spec. We stopped saying "it works" after that conference demo. Now we ask: what happens when it doesn't?

If you're thinking about robots in your own operation and want the unvarnished version of what's ready and what isn't, we're happy to share what we've learned — [hello@rosecityrobotics.com](mailto:hello@rosecityrobotics.com).
