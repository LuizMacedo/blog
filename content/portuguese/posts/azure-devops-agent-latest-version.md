---
title: "Azure Devops Agent Latest Version" # Title of the blog post.
date: 2021-06-14T04:45:00-06:00 # Date of post creation.
tags: ["Microsoft", "Azure", "Azure DevOps", "Azure DevOps Services", "Agent", "GitHub", "Version", "Release", "vsts-agent-win-x64", "REST API", "PowerShell"]
draft: false
description: "Esta postagem ajuda a encontrar a versão mais recente disponível do Azure DevOps Services." # Description used for search engine.
featured: true # Sets if post is a featured post, making appear on the home page side bar.
# toc: false # Controls if a table of contents should be generated for first-level links automatically.
# menu: main
# featureImage: "/images/path/file.jpg" # Sets featured image on blog post.
# thumbnail: "/images/path/thumbnail.png" # Sets thumbnail image appearing inside card on homepage.
# shareImage: "/images/path/share.png" # Designate a separate image for social media sharing.
# codeMaxLines: 10 # Override global value for how many lines within a code block before auto-collapsing.
# codeLineNumbers: false # Override global value for showing of line numbers within code block.
# figurePositionShow: true # Override global value for showing the figure label.
slug: "azure-devops-agent-latest-version"
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

A melhor maneira de ter a última versão do Agente, até momento, é obter todas as versões utilizando a API do GitHub e, em seguida, usar a tag para criar a URL de download para a plataforma específica que você deseja.

O objeto da release tem um arquivo assets.json associado a ele com os links de download para cada pacote se você quiser evitar hard-coding na URL.

Aqui está um exemplo em PowerShell que pode ser facilmente adaptado para qualquer linguagem:

```$release = Invoke-RestMethod https://api.github.com/repos/microsoft/azure-pipelines-agent/releases/latest
$assets = Invoke-RestMethod $release.assets[0].browser_download_url
$assets | Where-Object { $_.name -match "vsts-agent-win-x64*" } | Select-Object -ExpandProperty downloadUrl
```

> <cite>Thanks to Mark Roghelia.</cite>

<br>