# pre-commit-format-markdown

A [`pre-commit`](https://pre-commit.com) hook to format markdown files via
[`cmark-gfm`](https://github.com/github/cmark-gfm)

## Installation

This repo provides two hooks.

### Script Hook

This requires you have `cmark-gfm` in your `PATH`, sample config:

``` yaml
repos:
-   repo: "https://github.com/matthewhughes934/pre-commit-format-markdown"
    rev: v0.2.0
    hooks:
    -   id: format-markdown-script
```

### Docker Hook

This requires that you have `Docker` installed, sample config:

``` yaml
repos:
-   repo: "https://github.com/matthewhughes934/pre-commit-format-markdown"
    rev: v0.2.0
    hooks:
    -   id: format-markdown-docker
```
