# pre-commit-format-markdown

A [`pre-commit`](https://pre-commit.com) hook to format markdown files via
[`cmark-gfm`](https://github.com/github/cmark-gfm). This allows all your
markdown files to be formatted in the same fashion and avoids unnecessary
discussions in PRs around the formatting.

## Installation

This repo provides two hooks. The hooks basically just runs `cmark-gfm --to
commonmark <hook-args>` to format the file.

### Script Hook

This requires you have `cmark-gfm` in your `PATH`, sample config:

``` yaml
repos:
-   repo: "https://github.com/matthewhughes934/pre-commit-format-markdown"
    rev: v0.2.0
    hooks:
    -   id: format-markdown-script
        args: ["--width", "100"]
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
