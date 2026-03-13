# Luiz Macedo — Personal Blog

Source for [luizmacedo.dev](https://luizmacedo.dev), built with [Hugo](https://gohugo.io/) and the [hugo-clarity](https://github.com/chipzoller/hugo-clarity) theme.

## Prerequisites

| Tool | Version |
|------|---------|
| [Hugo Extended](https://gohugo.io/installation/) | latest |
| Git | 2.x+ |

## Local Development

```bash
# Clone with submodules (theme)
git clone --recurse-submodules https://github.com/LuizMacedo/blog.git
cd blog

# Run local server with drafts
hugo server -D
```

The site will be available at `http://localhost:1313/`.

## Creating a New Post

```bash
# English
hugo new content/english/posts/my-new-post.md

# Portuguese (remember to set slug and translationKey in frontmatter)
hugo new content/portuguese/posts/my-new-post.md
```

### Bilingual Checklist

- Both files must share the same `translationKey` value.
- Portuguese posts need an explicit `slug` matching the English filename.
- Use `categories` in English and `categorias` in Portuguese frontmatter.

## Deployment

Pushing to `main` triggers the [GitHub Actions workflow](.github/workflows/hugo-blog-deploy.yml) which builds the site and deploys to [LuizMacedo/luizmacedo.github.io](https://github.com/LuizMacedo/luizmacedo.github.io). Pull requests only run the build step (no deploy) to validate changes.

## Project Structure

```
config.toml          # Main site config (includes taxonomies, privacy, sitemap)
content/
  english/           # English content
  portuguese/        # Portuguese content
data/                # YAML data files (menu, social links, month names)
layouts/             # Template overrides on top of hugo-clarity theme
static/              # Static assets (images, icons, logos)
themes/hugo-clarity/ # Theme (Git submodule — do not edit directly)
```

## License

Content is licensed under [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/).
Code and templates are under the [MIT License](LICENSE.md).