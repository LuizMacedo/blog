---
title: "Azure Devops Service Tag NSG Rule" # Title of the blog post.
date: 2021-02-03T11:00:17-06:00 # Date of post creation.
tags: ["Microsoft", "Azure", "Azure DevOps", "Azure DevOps Services", "NSG", "Firewall", "Rules", "Service Tags", "Network", "Resource Groups"]
draft: false
description: "Esse post ajuda a habilitar a Service Tag do Azure DevOps Services para um NSG ou Firewall" # Description used for search engine.
featured: true # Sets if post is a featured post, making appear on the home page side bar.
# toc: false # Controls if a table of contents should be generated for first-level links automatically.
# menu: main
# featureImage: "/images/path/file.jpg" # Sets featured image on blog post.
# thumbnail: "/images/path/thumbnail.png" # Sets thumbnail image appearing inside card on homepage.
# shareImage: "/images/path/share.png" # Designate a separate image for social media sharing.
# codeMaxLines: 10 # Override global value for how many lines within a code block before auto-collapsing.
# codeLineNumbers: false # Override global value for showing of line numbers within code block.
# figurePositionShow: true # Override global value for showing the figure label.
slug: "azure-devops-service-tag-nsg-rule"
translationKey: "azure-devops-service-tag-nsg-rule"

categories:
   - Tecnologia
   - Azure DevOps
   - Azure
   - Firewall
   - Network
---

Se você precisar habilitar as Service Tags do Azure DevOps Services para seu NSG ou Firewall, execute:

az network nsg rule create -g **MEURESOURCEGROUP** --nsg-name **MEUNSG** -n AzureDevOps --priority 400 --source-address-prefixes VirtualNetwork --destination-address-prefixes Storage --destination-port-ranges '*' --direction Inbound --access Allow --protocol Tcp --description "Habilitar Azure DevOps Services."<br><br>

> A Service Tag não se aplica aos Microsoft Hosted Agents. Os clientes vão continuar precisando habilitar todo o grupo geográfico para os Microsoft Hosted Agents. Se habilitar toda a geografia não é uma opção para você, nós recomendamos a utilização de Azure Virtual Machine Scale Set Agents. Os Scale Set Agents são uma forma de self-hosted agents que podem ser auto provisionados para atender a suas demandas.
>
> <cite>Justin Chung</cite> - [Azure DevOps Service Tag Released](https://devblogs.microsoft.com/devops/azure-devops-service-tag-released/)

<br>

[Azure Service Tags](https://docs.microsoft.com/en-us/azure/virtual-network/service-tags-overview)
