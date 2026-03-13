---
title: "Surface Laptop 3 UEFI Boot"
date: 2021-01-22T11:53:33-06:00
tags: ["Microsoft", "Surface", "Laptop3", "Boot", "Hardware", "Issues"]
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

A quick tip for Surface Laptop 3 owners.

This past week, after a Windows update, my Surface Laptop 3 stopped being able to start Windows entirely. I followed all the recommended steps to enter the UEFI setup, but none of them worked.

I needed to change the boot order to start from a flash drive and recover the OS, but I couldn't figure out how. After a lot of searching and wasted time, I finally found the correct way to enter the Surface UEFI.

Turn off the laptop completely by holding the power button for 5 seconds, or until it shuts off.

**Then press and hold Volume Up + Power for 45 seconds.**

Done. The Surface UEFI screen should appear, where you can change the boot settings.

![Surface UEFI](/images/surface-uefi.png)

[How to use Surface UEFI](https://support.microsoft.com/en-us/surface/how-to-use-surface-uefi-df2c8942-dfa0-859d-4394-95f45eb1c3f9)
