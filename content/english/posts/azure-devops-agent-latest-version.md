---
title: "Azure DevOps Agent Latest Version" # Title of the blog post.
date: 2021-06-14T04:45:00-06:00 # Date of post creation.
tags:
  [
    "Microsoft",
    "Azure",
    "Azure DevOps",
    "Azure DevOps Services",
    "Agent",
    "GitHub",
    "Version",
    "Release",
    "vsts-agent-win-x64",
    "REST API",
    "PowerShell",
  ]
draft: false
description: "This post helps you find the latest available version of Azure DevOps Services." # Description used for search engine.
featured: true # Sets if post is a featured post, making appear on the home page side bar.
# toc: false # Controls if a table of contents should be generated for first-level links automatically.
# menu: main
# featureImage: "/images/path/file.jpg" # Sets featured image on blog post.
# thumbnail: "/images/path/thumbnail.png" # Sets thumbnail image appearing inside card on homepage.
# shareImage: "/images/path/share.png" # Designate a separate image for social media sharing.
# codeMaxLines: 10 # Override global value for how many lines within a code block before auto-collapsing.
# codeLineNumbers: false # Override global value for showing of line numbers within code block.
# figurePositionShow: true # Override global value for showing the figure label.
translationKey: "azure-devops-agent-latest-version"

categories:
  - Technology
  - Azure DevOps
  - Azure
  - Agent
  - GitHub
  - REST API
  - PowerShell
---

The best way to handle this is to get the latest release from the GitHub API and use its version tag to build the download URL for your specific platform.

The release object has an associated assets JSON file containing the download links for each package, which you can use to avoid hard-coding the URL scheme.

Here is a PowerShell example that could be easily adapted to any language:

```powershell
$release = Invoke-RestMethod https://api.github.com/repos/microsoft/azure-pipelines-agent/releases/latest
$assets = Invoke-RestMethod $release.assets[0].browser_download_url
$assets | Where-Object { $_.name -match "vsts-agent-win-x64*" } | Select-Object -ExpandProperty downloadUrl
```

> <cite>Thanks to Mark Roghelia.</cite>

<br>
