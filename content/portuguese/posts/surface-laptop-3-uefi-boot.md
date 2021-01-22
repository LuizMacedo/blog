---
title: "Surface Laptop 3 UEFI Boot"
date: 2021-01-22T11:53:33-06:00
tags: ["Microsoft", "Surface", "Laptop3", "Boot", "Hardware", "Issues"]
draft: false
description: "Esse post ajuda a iniciar o boot UEFI no Surface Laptop 3 já que não existe documentação sobre isso, ou pelo menos não encontrei." # Description used for search engine.
featured: true # Sets if post is a featured post, making appear on the home page side bar.
# toc: false # Controls if a table of contents should be generated for first-level links automatically.
# menu: main
# featureImage: "/images/path/file.jpg" # Sets featured image on blog post.
# thumbnail: "/images/path/thumbnail.png" # Sets thumbnail image appearing inside card on homepage.
# shareImage: "/images/path/share.png" # Designate a separate image for social media sharing.
# codeMaxLines: 10 # Override global value for how many lines within a code block before auto-collapsing.
# codeLineNumbers: false # Override global value for showing of line numbers within code block.
# figurePositionShow: true # Override global value for showing the figure label.
slug: "surface-laptop-3-uefi-boot"
translationKey: "surface-laptop-3-uefi-boot"

categorias:
   - Tecnologia
   - Surface
---

Dica rápida para quem tem o Surface Laptop 3.

Nessa semana após um update do Windows, tive um problema com meu Surface Laptop 3. Ele não conseguia iniciar o Windows de forma alguma. Tentei diversas vezes entrar no setup seguindo as recomendações, porém sem sucesso. 

Eu precisava alterar a ordem do boot para conseguir iniciar o pen drive para recuperar o sistema operacional, mas não consegui. Após muito trabalho para encontrar a informação, e após um bom tempo perdido, descobri como inicializar o Surface UEFI.

Desligue o Laptop completamente apertando o botão de desligar por 5 segundos, ou até desligar. 

Após isso **você deve pressionar o botão de aumentar o Volume + botão de ligar/desligar por 45 segundos**.

Feito. A tela do Surface UEFI deve aparecer e você pode alterar as configurações de boot.

![Surface UEFI](/images/surface-uefi.png)

[How to use Surface UEFI](https://support.microsoft.com/en-us/surface/how-to-use-surface-uefi-df2c8942-dfa0-859d-4394-95f45eb1c3f9)