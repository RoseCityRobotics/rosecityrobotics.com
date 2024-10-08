---
layout: post
author: duncan_miller
title: Training Data Collection Methodologies for AI-Driven Robotics
description: Learn about cutting edge data collection methods for capturing training data for AI-driven robotics
image: /images/posts/training_data_collection.png
---

In traditional automation and robotics, the tasks performed by machines must be rigidly prescriptive, structured, and well-defined. Movements are mapped to precise locations, operations are ordered in sequences and a script lists the actions, parameters and repeated processes. This works well for high volume, low mix tasks where there are a small number of variations in possible objects the robot will interact with, but not so well for use cases which do not fit this mold.

This is because an operator must reprogram the robot for each new object or variation in movement. High volume, low mix processes can justify this human work by allocating out that fixed overhead over a large number of automated actions.

Where traditional robotics and automation hardware fall short are in more challenging tasks. For example tasks which include low volumes with unstructured or a high mix of variations in the possible objects the robot will interact with. For this case, it is typically not economically feasible for the operator to reprogram the robot for each low volume run many times for the high mix of objects.

This is where the power of AI and intelligent robotics comes into play. At RoZero Labs, our innovative approaches in data collection and robotic training using neural networks enable us to add layers of intelligence and capabilities to any robotics hardware. This enables the robots to be more adaptable, learn on the fly and intuitively decide on next actions based on its broader training dataset.

A robot will need to be trained to do any new task and the essential first step of that process is collecting sample data of a human performing the task. In order to train a neural network on the intricacies of the task, we need to collect somewhere in the range of 50-100 examples of a human, or leader robot operated by a human doing that task using carefully placed video and sensors.

### The Role of Data in AI Robotics

#### Data as the Foundation
Effective AI-driven robotics begins with high-quality data. At RoZero Labs, we utilize advanced sensors and vision systems to collect diverse, rich datasets that enable us to use machine learning to train robots to perform complex tasks with precision and adaptability.

#### Leading Data Collection Methodologies
Our data collection methodologies are at the forefront of the industry, leveraging cutting-edge technologies to capture and process data in ways that are both efficient and effective. Our primary data collection methodologies include:
1. Universal Manipulation Interface (UMI)
2. Teleoperation with ALOHA
3. Apple Vision Pro App

### 1. Universal Manipulation Interface (UMI)

#### Overview of UMI
UMI is our primary data collection framework, designed to capture nuanced human manipulations directly from demonstrations. The UMI devices we use are based on [research and open source hardware](https://umi-gripper.github.io/) from Stanford University, Columbia University and the Toyota Research Institute. This system uses sensorized hand-held grippers and advanced camera setups to record detailed manipulation actions, which are then mapped to robot hardware and translated into trainable data for robots.

#### UMI Data Collection Examples
{% render "youtube_embed", youtube_key: "gXtIW1HlITo" %}

#### Technological Innovations
- **Wide Field of View:** Fisheye lenses on wrist-mounted cameras significantly enhance the visual context, capturing intricate interactions in a broad visual field.
- **Implicit Stereo Vision:** Side mirrors on the grippers enrich the dataset by providing multiple visual perspectives, crucial for depth perception and environmental understanding.
- **Kinematic-Based Data Filtering:** This feature ensures that the diverse data collected is readily applicable across different robotic models, enhancing flexibility and utility.
- **Open Source Inexpensive Hardware** The sensorized gripper can be constructed using off the shelf and inexpensive hardware including cameras, sensors and 3D printed parts, all totaling less than $500. All instructions, required components and plans for 3D printing are available in the [UMI hardware guide](https://docs.google.com/document/d/1TPYwV9sNVPAi0ZlAupDMkXZ4CA1hsZx7YDMSmcEy6EU/edit).

#### Data Collection and Processing
UMI enables operators to perform tasks in varied environments, capturing every movement and interaction. The data is meticulously processed and mapped to specific joints and motors providing a foundational dataset that informs the precise and adaptive behaviors of the robots.

### 2. Teleoperation with ALOHA

#### Overview of ALOHA
ALOHA stands for A Low-cost Open-source Hardware System for Bimanual Teleoperation, (developed and published)[https://mobile-aloha.github.io/]) by researchers at Stanford University. It represents a significant leap in making fine manipulation tasks accessible and reproducible on a budget, without sacrificing performance.

#### Teleoperation Data Collection Examples
{% render "youtube_embed", youtube_key: "N-WSYbU4I_0" %}

#### Teleoperation System Innovations
- **Bimanual Coordination:** Utilizes two synchronized robotic arms to replicate complex human tasks, enhancing the dexterity and range of robotic actions. This enables a human operator to directly control both arms and the mobile base of the robot and is suitable for executing complex tasks.
- **Cameras and Sensors:** Multiple cameras provide comprehensive visual feedback at a high frequency, capturing detailed visual and motion data during demonstrations which is essential for tasks requiring fine visual coordination.
- **Complex Task Execution:** Capable of handling intricate tasks like cooking, cleaning, and navigation.
- **Built in Joint Mapping** Since the operations are done directly by the robot arms and grippers, we can avoid the complex step of mapping sensor data to the robot joints and motors.
- **Integration with Training Data:** Combines data from mobile and static ALOHA demonstrations for improved generalization and training efficiency.
- **Open Source Hardware** All plans and specifications are available in the [ALOHA hardware tutorial](https://docs.google.com/document/d/1sgRZmpS7HMcZTPfGy3kAxDrqFMtNNzmK-yVtX5cKYME/edit) and can be constructed with parts which cost approximately $20,000. ALOHA units are also manufactured by 3rd party providers, ranging in cost from $25,000 - $50,000 each.

#### Data Collection Process
- **Human Demonstrations:** Operators use this teleoperation system to perform finely controlled tasks, which are recorded in detail.
- **Recording Data:** Captures both the physical motions and the visual data, providing a complete picture of each task.

### 3. Apple Vision Pro App

#### Advanced Sensory Capabilities
In addition to more traditional data collections outlined above, we have also developed a custom data collection app for the Apple Vision Pro. The Vision Pro is equipped with state-of-the-art sensors including a stereoscopic 3D main camera system enabling spatial video capture, 2 high resolution main cameras, 6 world-facing tracking cameras, 4 eye-tracking cameras and a LiDAR scanner.

This offers unprecedented data collection capabilities in a low friction form factor. Users can wear the Apple Vision Pro in pass-through mode and perform the task as they usually do with their own hands, instead of using UMI grippers or a teleoperated robot to perform the task. This technology captures intricate environmental and interaction details, ideal for training AI-driven robots in complex tasks.

#### Hand Tracking Technology
Apple Vision Pro's hand tracking technology allows for the precise capture of human hand movements and gestures. This feature can be useful for capturing data used for teaching robots tasks requiring fine motor skills and intuitive human-robot interaction.

#### Apple Vision Pro Data Collection Example
{% render "youtube_embed", youtube_key: "Ezz7mlMf1_U" %}

#### Applications and Benefits
- **Detailed Environmental Interaction:** Utilizes advanced sensors to capture comprehensive environmental data, enriching the training datasets for robotic systems.
- **Gesture and Motion Recognition:** Enhances robots' understanding of human gestures, improving their responsiveness and interaction capabilities in various settings.
- **High-Quality Training Data:** Provides accurate and detailed data, crucial for developing sophisticated robotic behaviors and operational adaptability.

By leveraging the Apple Vision Pro’s capabilities, we are innovating ways to reduce barriers and significantly enhance training data collection for AI-driven robotics, leading to more adaptive, responsive, and capable robotic systems.

### Utilizing the Collected Data for Training

Regardless of which methodology is used for collecting the data, the samples are then cleaned and prepared for use in training a neural network on the task recorded.

#### Volume of Data Collected
- **Sample Size and Time:** For each task, about 50 to 100 demonstrations are recorded, totaling around 10-20 minutes of active demonstration time per task.
- **Co-training Across Tasks** In addition to training data collected about the specific task, training effectiveness of the neural network also improves with co-training on other unrelated tasks, so the more data collected the easier each new task becomes to train.

#### Post-Training Capabilities
- **Learned Skills:** Robots trained with this data perform with precision in real-world applications, successfully executing tasks like threading cable ties, opening condiment cups, cooking and cleaning up messes while handling fragile glassware.
- **Bimanual Manipulation:** Robots are able to coordinate both arms simultaneously to perform tasks like cooking, cleaning, and object sorting.
- **Navigation:** The robot base is able to move through space in conjunction with arm movements, facilitating smooth navigation in complex environments.
- **Long-Horizon Tasks:** Combining movement and manipulation skills to handle more intricate, unstructured and sequential tasks such as tidying up spaces and loading objects.

#### Addressing Challenges
- **Compounding Errors and Variability:** ALOHA addresses these common challenges in robotic training through innovative techniques like action chunking and the use of a conditional variational autoencoder, ensuring smooth operation and adaptability to task variations.
- **Co-Training Approach:** Data from static ALOHA demonstrations, which include 825 examples of diverse manipulation tasks, is integrated into training alongside Mobile ALOHA data to improve generalization and data efficiency.
- **Imitation Learning:** Behavior cloning is used to replicate human demonstrations. The system benefits from combining mobile and static data to learn long-horizon tasks such as cooking, cleaning, and navigating.

### Applications in Industry

From advanced manufacturing to recycling and logistics, our robots are adept at performing a range of low volume, high mix, and unstructured tasks from assembly and inspection to delicate manipulations and intricate sorting operations. This versatility showcases the practical benefits of these advanced training methodologies.

### Future of Robotics

As we look ahead, the rapid growth in capabilities of generative AI as it relates to language has direct implications in the growth of capabilities of robotics. Integrating even more advanced AI capabilities promises to further enhance the autonomous and adaptable functions of robots, rapidly making them even more capable and flexible over time.

RoZero Labs is committed to pushing the boundaries of what's possible in robotic automation. By integrating sophisticated data collection systems like UMI, teleoperation with ALOHA and our Apple Vision Pro app into our workflow, we empower forward looking businesses to transform their operations with smart, safe, and efficient robotic assistants. For a consultation or demonstration, [reach out](/contact) to us today.
