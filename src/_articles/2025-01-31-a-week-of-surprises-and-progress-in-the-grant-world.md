---
layout: article
title: A Week of Surprises and Progress in the Grant World
slug: a-week-of-surprises-and-progress-in-the-grant-world
author: duncan-miller
tags:
- company-news
published_at: '2025-01-31T20:00:00Z'
image: "/images/articles/a-week-of-surprises-and-progress-in-the-grant-world/cover.jpeg"
---

It’s been one wild week on the grant front! In a dramatic twist, federal grant funding was temporarily halted by executive order—though thankfully, the funding doors swung open again the very next day at least for now. At Rose City Robotics we depend on federal grants to fund our early innovative research and development before industry will. So you can imagine it has been a tense week as I'm sure it was with many other tech startups. Amid this roller coaster, our team has pressed on with our NSF Phase 1 SBIR/STTR grant application and our ongoing robotics research. We meet this week for a demo of our Robofetch robotic arm for our partners at Portland State University's Department of Mathematics.

### NSF Grant Application Update

Our NSF proposal is evolving, and we’re excited to share how our research is breaking new ground. At the core of our proof of concept is the Robofetch robotic arm project, where we’re integrating both physical systems and advanced simulation tools to push the limits of capturing and utilizing training data for machine learning in robotics.

### Robofetch: Integrating Physical Robotics with Virtual Simulation

Our project continues to make strides on multiple fronts:

- **Dual-Platform Progress:** The Robofetch project now successfully marries a physical robotic arm with a robust virtual simulation environment powered by Blender. This synergy lets us test and visualize complex arm movements in photorealistic detail, providing valuable synthetic training data for neural network training.
- **Refined Motion and Perception:** We’ve reached a major milestone with the arm’s basic movements and ball detection capabilities—thanks to traditional computer vision techniques and our advanced kinematics calculations, which have allowed us to refine our control algorithms for precise arm positioning.
- **Enhanced Simulation Capabilities:** By leveraging the Blender gaming engine for photorealistic renderings, we’re generating high-quality data that supports our evaluation of various motion planning algorithms. There’s also active exploration into using physics simulation platforms like NVIDIA Omniverse, which could further enhance the realism of our virtual models.

### Deep Dive: Motion Planning and Algorithm Comparisons

A key part of our research involves comparing four distinct motion planning approaches to determine the most effective strategy for our robotic systems:

- **Traditional Computer Vision:** Utilizing established techniques to detect features and plan movements. Working.
- **Action Chunking with Transformers:** Drawing on innovative research (inspired by Stanford ALOHA findings) to break down complex tasks into manageable action sequences and transformer neural networks. Working.
- **Active Inference:** Employing methods that allow the robot to predict, adjust and optimize its actions dynamically, which is particularly useful in uncertain environments. In development.
- **Reinforcement Learning:** Recently added to our comparison set, this approach holds promise for enabling the robotic arm to learn optimal movements through trial and error. In development.

A key part of our research involves comparing these four distinct motion planning approaches to determine the most effective strategy for our robotic systems. Our overarching goal is to evaluate our methodology equally against all four options—traditional computer vision, action chunking with transformers, active inference, and reinforcement learning—to gather comparable data from both our synthetic simulations and real-world experiments, ultimately refining the algorithms to be robust and efficient.

### A Task of Precision and Innovation

In parallel with our motion planning research, we’re developing a comprehensive taxonomy for describing robotic tasks. This involves:

- **Task Definition and Taxonomy Development:** A clear, standardized language is critical for ensuring our robots can adapt to variations and effectively communicate with human expert operators.
- **Data Collection and Simulation:** Innovative data collection strategies are on the table, including teleoperation, using a UMI gripper equipped with a GoPro or in VR through our Apple Vision Pro app. By integrating these real-world data collection methods with our simulation tools, we’re paving the way for a robust training framework.

### Next Steps and Future Directions

As we continue refining our NSF proposal, our immediate next steps include:

- **Detailing Research Aims:** We are working to clearly define the research objectives and specific tasks associated with each motion planning approach.
- **Developing a Precise Task Language:** Building on frameworks such as those used in da Vinci surgical system (John Hopkins) and G-code, we’re researching a comprehensive taxonomy to describe each stage of a task.
- **Refining Physical and Virtual Integration:** We’re investigating deeper integrations with advanced physics simulations to further close the gap between our virtual models and physical realities.
- **Synthetic Data Quality Assessment:** We’re rigorously testing to determine the boundary between high-quality synthetic data and less reliable outputs. This critical evaluation ensures that our simulation-generated data meets the standards needed for robust and efficient network training.

Each of these steps is geared toward not just meeting the NSF’s high standards, but also advancing the state of robotics and machine learning. We remain deeply committed to pushing the envelope on both theoretical research and practical application, ensuring that our robotics innovations continue to set new industry benchmarks.

Thank you for staying engaged with our journey. We’re thrilled to share these updates and look forward to bringing you more exciting developments as we move closer to our grant milestones and further breakthroughs in robotics technology. Stay tuned for more news from our cutting-edge labs!
