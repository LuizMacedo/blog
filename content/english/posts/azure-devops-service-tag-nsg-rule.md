---
title: "Azure Devops Service Tag NSG Rule" # Title of the blog post.
date: 2021-02-03T11:00:17-06:00 # Date of post creation.
tags: ["Microsoft", "Azure", "Azure DevOps", "Azure DevOps Services", "NSG", "Firewall", "Rules", "Service Tags", "Network", "Resource Groups"]
draft: false
description: "This post helps to enable the Service Tags for your NSG or Firewall pointing to the Azure DevOps Service tag." # Description used for search engine.
featured: true # Sets if post is a featured post, making appear on the home page side bar.
# toc: false # Controls if a table of contents should be generated for first-level links automatically.
# menu: main
# featureImage: "/images/path/file.jpg" # Sets featured image on blog post.
# thumbnail: "/images/path/thumbnail.png" # Sets thumbnail image appearing inside card on homepage.
# shareImage: "/images/path/share.png" # Designate a separate image for social media sharing.
# codeMaxLines: 10 # Override global value for how many lines within a code block before auto-collapsing.
# codeLineNumbers: false # Override global value for showing of line numbers within code block.
# figurePositionShow: true # Override global value for showing the figure label.
translationKey: "azure-devops-service-tag-nsg-rule"

categories:
   - Technology
   - Azure DevOps
   - Azure
   - Firewall
   - Network
---

If you need to enable the Service Tags for your NSG or Firewall pointing to the Azure DevOps Service tag, run:

az network nsg rule create -g **MYRESOURCEGROUP** --nsg-name **MYNSG** -n AzureDevOps --priority 400 --source-address-prefixes VirtualNetwork --destination-address-prefixes Storage --destination-port-ranges '*' --direction Inbound --access Allow --protocol Tcp --description "Allow Azure DevOps Services."<br><br>

> The Service Tag does not apply to Microsoft Hosted Agents. Customers are still required to allow the entire geography for the Microsoft Hosted Agents. If allowing the entire geography is a concern, we recommend using the Azure Virtual Machine Scale Set Agents. The Scale Set Agents are a form of self-hosted agents that can be autoscaled to meet your demands.
>
> <cite>Justin Chung</cite> - [Azure DevOps Service Tag Released](https://devblogs.microsoft.com/devops/azure-devops-service-tag-released/)

<br>

[Azure Service Tags](https://docs.microsoft.com/en-us/azure/virtual-network/service-tags-overview)
