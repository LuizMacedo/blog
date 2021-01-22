---
title: "Surface Laptop 3 Uefi Boot"
date: 2021-01-22T11:53:33-06:00
tags: ["Microsoft", "Surface", "Laptop3, Boot, Hardware, Issues"]
draft: false
description: "This post helps to start the UEFI boot in the Surface Laptop 3 since there is no documentation about it." # Description used for search engine.
featured: true # Sets if post is a featured post, making appear on the home page side bar.
# toc: false # Controls if a table of contents should be generated for first-level links automatically.
# menu: main
# featureImage: "/images/path/file.jpg" # Sets featured image on blog post.
# thumbnail: "/images/path/thumbnail.png" # Sets thumbnail image appearing inside card on homepage.
# shareImage: "/images/path/share.png" # Designate a separate image for social media sharing.
# codeMaxLines: 10 # Override global value for how many lines within a code block before auto-collapsing.
# codeLineNumbers: false # Override global value for showing of line numbers within code block.
# figurePositionShow: true # Override global value for showing the figure label.
translationKey: "surface-laptop-3-uefi-boot"

categories:
   - Technology
   - Surface
---

Quick tip for the Surface Laptop 3 owners.

During this week, after a Windows update, I had a problem with my Surface Laptop 3. It was unable to start Windows at all. I tried several times to enter the setup following the recommendations, but without success.

I needed to change the boot to start the flash drive to recover the operating system, but I couldn't. After a lot of work to find the information and wasted time, I found out how to boot the Surface UEFI.

Turn off the Laptop completely by pressing the power button for 5 seconds, or until it turns off. 

**Press the Volume up (F4 ) + Power button for 45 seconds.**

Done. It should open the Surface UEFI screen and can change the boot settings.

![Surface UEFI](/images/surface-uefi.png)

[How to use Surface UEFI](https://support.microsoft.com/en-us/surface/how-to-use-surface-uefi-df2c8942-dfa0-859d-4394-95f45eb1c3f9)