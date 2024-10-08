# RoZero Labs
A robotics startup in Portland Oregon.

## Usage
gem install bridgetown -N

This codebase generates a static site using [Bridgetown](https://www.bridgetownrb.com/). To use it:

1. Make sure you have all [required Bridgetown dependencies](https://www.bridgetownrb.com/docs/installation#requirements) installed. If you need to install Ruby, I recommend [RVM](https://rvm.io/).
2. Install a Javascript package manager, I recommend [Yarn](https://classic.yarnpkg.com/lang/en/docs/install/) which can also be installed using [homebrew](https://formulae.brew.sh/formula/yarn). You will also need Node, if you don't already have it I recommend installing with [NVM](https://github.com/nvm-sh/nvm/blob/master/README.md).
3. Clone the Repo and cd into the rosecityrobotics.com directory.
```
git clone git@github.com:RoseCityRobotics/rosecityrobotics.com.git
cd rosecityrobotics.com
```
4. Install Ruby Gems with bundler (preinstalled with Ruby), gems are specified in the Gemfile.
```
bundle install
```
5. Install Javascript packages, packages are specified in package.json.
```
yarn install
```
6. Start the Bridgetown server
```
bin/bridgetown start
```
7. In your browser visit
```
http://localhost:4000
```
8. Edit files in the /src directory and they will be generated as static pages in the output directory. So to edit the index page, edit the rosecityrobotics.com/src/index.html file.

### Publishing Blog Posts

Bridgetown has some built in functionality for managing blog posts. To create a new blog post add a file in the src/_posts directory with the following format:
```
YYYY-MM-DD-title-of-post.md
```

The blog post can be written in markdown and you can also mix in html if needed, or more complex logic using [liquid](https://github.com/Shopify/liquid). For example in the /src/_posts/2024-04-28-join-us-at-portland-area-robotics-society.md file there is a youtube video embed code using an iframe. I've added this html code in a reusable youtube_embed component using liquid that just requires a value passed for the youtube_key variable which comes at the end of the youtube url. So for example you can embed an youtube video with the url `https://www.youtube.com/embed/N-WSYbU4I_0` using:

```
{% render "youtube_embed", youtube_key: "N-WSYbU4I_0" %}
```

At the top of the post file, you need to include "front matter" in YAML format. This is where you specify the layout and author of the post as well as a meta description for SEO (should be 156 characters or less). Here is an example:

```
---
layout: post
author: duncan_miller
description: RoZero Labs Founder and CEO Joseph Cole, PhD will be presenting on Mobile ALOHA, the open source robotics hardware developed by Stanford University.
image: images/posts/image.jpg
---
```

The author maps to a record in the src/_data/authors.yml file. So if you want to add or modify author details, just edit the authors.yml file. The author key should match the key in the front matter of the blog post.

The post title and date will be added to the post based on the filename, just use kabob case and the correct format for the date. If you want to specify the exact formatting of the title you can add a `title:` key to the front matter. The author and author image and bio will be added to the post based on the front matter and corresponding author data in the _data/authors.yml file. You can view the structure of this template in the src/_layouts/post.html file.

## Draft blog posts
If you want to create a draft blog post that won't be published, just add the `published: false` key to the front matter. This will prevent the post from being published. You can also preview the post by running the server with the --unpublished or -U flag `bin/bridgetown start -U`.

## Running tests
The tests and standardrb linter check will need to pass in the github action continuous integration in order for the changes to be deployed to Netlify after pushing commits to github.

First make sure test gems are installed

```
bundle install --with test
```

Then you can run the tests with:

```
bin/bridgetown test
```

and run standardrb linter with

```
standardrb
```

or to also fix any issues automatically

```
standardrb --fix
```

or run tests and standardrb together with:

```
bin/check
```
