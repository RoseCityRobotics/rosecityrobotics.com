---
layout: post
author: duncan_miller
title: EV Battery Recycling with Autonomous Robotic Disassembly
description: Discover how RoZero Labs is pioneering autonomous robotic solutions for the recycling of lithium-ion electric vehicle batteries.
image: /images/posts/ev_battery.png
published: true
---

Electric vehicles (EVs) are taking over the automotive industry and as their powerful lithium-ion batteries begin to reach their end of life, the need for efficient recycling solutions for those batteries is becoming more and more critical. In addition to passenger vehicles, EVs are also taking over in commercial and industrial applications, such as delivery trucks, buses, and forklifts as well as motorcycles, marine craft and leisure applications (scooters, bicycles etc).

Beyond vehicle applications, there are a growing number of humanoid robot companies preparing for mass production like Tesla, Agility, Figure AI and Boston Dynamics all powered by lithium-ion batteries. There is also an explosion in building and grid energy storage with lithium-ion technology in residential, commercial, industrial and utility scale applications to help the world adopt more wind and solar power.

There are often second-life applications for batteries, for example when EV batteries reach end of life, they often have up to 80% of their charge capacity. If we take apart the battery pack, some components, modules and cells can be directly reused for energy storage in buildings or refurbished EV batteries.

Lithium-ion batteries are made with several chemistries, but all use some combination of valuable materials like nickel, manganese, cobalt, aluminum, copper and of course lithium. Many of these critical materials are mined outside the United States and some materials will be in scarce supply based on the projected numbers of batteries we will need, particularly cobalt.

Even when battery cells are no longer usable, one interesting thing about batteries is that they don't consume these valuable materials over the course of their life, so most of the materials still exist in their original quantities. The problem is recovering them.

At RoZero Labs, we are developing autonomous robotic systems to enhance the recycling process of lithium-ion batteries. Our mission is to enable the autonomous disassembly of large lithium-ion batteries like the ones used in electric vehicles, recovering valuable materials with greater efficiency and lower emissions.

### The Need for Autonomous Robotic Disassembly

#### Ideal Recycling Process
The way recycle a lithium-ion battery with the lowest environmental and energy footprint is called direct recycling. Direct recycling involves extracting anode and cathode materials from batteries before their chemistry is compromised, enabling them to be reused in new batteries. While this works well in a lab, it has not yet been commercialized due to the difficulties and isolating feedstocks to specific battery chemistries, which is a required prerequisite to direct recucling.

#### Second-Life Opportunities
When a battery reaches its end of life, it may be because only one or two cells have gone bad. Many of the components and the good battery modules and cells can be repackaged for use in other applications, either in rebuilt batteries for EVs or for other purposes like energy storage for buildings or utilities. Bad cells that are not usable can then be shredded to recover the materials through a chemical processes called hydrometallurgy.

#### Current Recycling Methods
Currently most batteries that come in to recycling centers with either burned whole and the materials are recovered through a process called pyrometallurgy or shredded whole, then recovered using hydrometallurgy. Pyrometallurgy is energy and carbon intensive and since the whole pack is burned, it contains a lot of carbon which binds with the valuable materials, making them more difficult to recover.

With hydrometallurgy, since the whole pack is shredded together it takes lots of processing with strong acids to recover the materials. Hydrometallurgy is also a very energy intensive process, using a lot of water and chemicals.

Some recyclers and vehicle OEMs perform manual disassembly of the packs down to the module level, but no further than that as the process is too dangerous and time consuming for human workers. Still, disassembly has many benefits enabling lower cost shredding equipment and a simplified downstream recycling process which can enable higher recovery rates of critical materials at lower cost.

Both burning and shredding whole battery packs are not only inefficient but also environmentally damaging. The recycling process involves significant emissions and fails to recover valuable materials optimally. This is where the need for a disassembly solution a more refined, autonomous approach becomes evident.

#### Challenges of Disassembly
When batteries are delivered to recyclers from scrap yards they come in a wide variety of conditions. Some scrap yards store them outside due to fear of fire and they are often covered in rust, dirt, grease and grime. Batteries may be bent or damaged if they are dropped and bumped during the transportation process.

#### Dangers to Humans

In addition, batteries may come in at varying levels of charge and nearly all with at least some charge. Due to the fact that they become unstable (catch on fire) at low charge, batteries have a built in safety mechanism to ensure they always retain a certain minimum charge. This means nearly every large battery is dangerous to work on for human workers due to risk of life-threatening electrical shock. The batteries can also experience a thermal runaway, resulting in explosive fire and emit toxic gasses if a short circuit is created while working on them, which can easy happen with old or damaged batteries. Once disassembled the batteries also contain hazardous materials which can be harmful to human health if not handled properly.

#### No Standardization of Fastenings
Manufacturers also make their own proprietary battery packs that are sealed and fastened in a variety of ways including fusion welding, ultrasonic welding, ultrasonic bonding, industrial adhesives like epoxy, silicone and acrylic or mechanical fasteners like screws, rivets, or bolts. This means that each battery pack is unique and requires a custom approach to disassembly. The rapid pace of innovation in the EV industry also means that battery packs are constantly evolving with many manufacturers changing up their battery packs multiple times per year, making it challenging to develop a standardized approach to disassembly even within the same brand of battery.

Given these dangers and challenges, its simply not feasible for humans to disassemble each battery pack so its more practical right now to just either burn or shred the battery packs whole.

#### Why Autonomous Robots?
Autonomous robots offer a promising solution by enabling automated disassembly of battery packs. Robots are well suited for dangerous jobs dealing with high voltage electricity and hazardous materials, removing the risk to human workers.

Overcoming the challenge of fastener defeating calls for intelligent and adaptive robotics that can learn on the job, from other robots in a network as well as from humans, videos and product documentation.

Robotic equipment offers precise disassembly, recovering materials with greater efficiency and significantly reducing downstream emissions in the recycling process. Leveraging machine learning and transformer neural networks, we are developing robots that can use sensor and vision data to learn to perform these dangerous and challenging tasks with adaptive intelligence and continuous learning capabilities.

### Technological Innovations in Robotics

#### Leveraging Machine Learning
Our approach at RoZero Labs involves collecting and utilizing sensor and vision data to train transformer neural networks to provide robots with predictive motion planning capabilities. This allows our robots to train on complex tasks, enabling them to perform precise disassembly operations autonomously. This process is called imitation learning, where robots learn from human demonstrations and teleoperation using [research pioneered by Stanford University](https://mobile-aloha.github.io/).

We are also using a technique called active inference, which is a unified theory of human brain function using statistical physics. Active inference treats both perception and action as inference processes, allowing robots to seamlessly integrate sensory information and motor control techniques which shows great promise for endowing robots with adaptive capabilities central to real world applications.

#### Sensor and Vision Data Integration
We are developing [systems for capturing training data from human demonstrations](https://rozerolabs.com/2024/05/08/data-collection-methodologies-for-ai-driven-robotics/). By integrating training data gathered from our sensors and vision systems, we provide our robots with the necessary data to understand and navigate the intricate structures of EV battery packs. This data is crucial for training custom robots to perform these tasks safely and efficiently.

### Benefits of Autonomous Robotic Disassembly
Autonomous robotic disassembly allows for more precise material recovery compared to traditional methods. By disassembling battery packs, autonomous robots can recover valuable materials such as nickel, manganese, cobalt, aluminum, copper and lithium more efficiently. Also good cells can be extracted before the recycling process and returned to use, which saves a considerable amount of embodied manufacturing energy and cost.

Traditional methods like burning and shredding packs whole result in high levels of emissions, whereas disassembly with autonomous robotics minimizes environmental impact through precise and controlled operations and more efficient extraction of valuable materials.

Battery recycling involves handling hazardous materials with electrical charge, which poses safety risks to human workers. Autonomous robots mitigate these risks by performing dangerous tasks, ensuring a safer working environment.

### Market and Industry Landscape

#### Growth of EV Market
The EV market is growing rapidly, with EVs projected to constitute 40% of global car sales by 2030. This growth increases the demand for efficient recycling solutions to manage the influx of used batteries. Since batteries reach their end of life in 10-15 years, a [report by McKinsey](https://www.mckinsey.com/industries/automotive-and-assembly/our-insights/battery-recycling-takes-the-drivers-seat) expects over 1.8 gigatons of EV batteries to reach end of life by 2030. This number is growing exponentially, with 7.8 gigatons to be recycled by 2035 and 20.5 gigatons by 2040. At RoZero Labs we are working to ensure that our technologies remain at the cutting edge of the industry and that our robotic solutions are adaptable and scalable as batteries continue to evolve.

#### Current Recycling Capacity
While China leads the world in recycling capacity, the EU and the US are still developing their industries. Experts estimate the current recycling capacity in the US to be approximately 200,000 tons of batteries per year. Policymakers are increasingly pressuring the EV sector to ensure that batteries are designed for circularity, containing recycled content, and that recyclers recover larger shares of materials. EU regulations now require that 25% of materials in new batteries must be recycled content.

#### Scarcity of Critical Materials
The demand for EV batteries is driving up the demand for critical materials like cobalt, nickel, and lithium. These materials are not only scarce but also have a high environmental impact when mined. By developing efficient recycling solutions, we can reduce the need for mining and mitigate the environmental impact of battery production. It is estimated that by 2030, the demand for cobalt will exceed the current global production capacity, making recycling an essential part of the EV industry.

#### Environmental Impacts
The production of lithium-ion batteries has a significant environmental impact, with emissions from battery production expected to increase by 800% by 2040. By developing efficient recycling solutions, we can reduce the environmental impact of battery production and mitigate the emissions associated with the recycling process. It is estimated that batteries produced with recycled materials result in up to 30% lower carbon emissions that those using virgin materials. Autonomous robotic disassembly offers an even more sustainable solution for managing end-of-life batteries, further reducing emissions and minimizing environmental impact.

#### The Future of EV Battery Recycling

At RoZero Labs we believe the future of EV battery recycling lies in disassembly using autonomous robotics. We are committed to advancing this technology to increase safety, reduce emissions and enable the continued growth of electric vehicles and battery technology, which we believe will benefit humanity and provide a positive climate impact. By leveraging machine learning we are developing intelligent, adaptive robots that revolutionize the recycling process.

Join us in pioneering sustainable recycling solutions and transforming the way we handle EV battery waste. For more information [reach out](/contact) to us today.
