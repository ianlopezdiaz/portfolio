
# **Portfolio**

- This portfolio was built using [Quarto](https://quarto.org/)
- The basic structure is in file [index.qmd](index.qmd)
- Some configurations are in [_quarto.yml](_quarto.yml)
- Files (logo, CVs) are in [assets](assets)
- There is a CV template in [assets/curriculum](assets/curriculum)
- The rendered site (`_site/`) is not tracked in git - it's published
  straight to the `gh-pages` branch
- Publishing is automatic: a GitHub Action
  ([.github/workflows/publish.yml](.github/workflows/publish.yml)) renders
  and publishes to `gh-pages` on every push to `master`. Manual publishing
  via [scripts/publish.sh](scripts/publish.sh) still works and is handy if
  you want to publish without pushing to `master` first, or if the Action
  fails and you need to re-publish by hand.

## If you want to run this yourself do the following:

### 0. Install the toolchain

No Python packages are needed - `index.qmd` has no code cells and
`assets/curriculum/make.py` only uses the standard library. Install these
system tools instead:

- [Quarto CLI](https://quarto.org/docs/get-started/) - required
- `pdflatex` (a TeX Live distribution) - only if rebuilding the CV PDFs
- ImageMagick (`convert`) - only if rerunning `assets/img/crop.sh`

`requirements.txt`/`environment.yml` are kept in the repo (essentially
empty) just to document that explicitly - see the comments in each file.

### 1. Preview the site locally

```bash
quarto preview
```

If it's all OK, go on and

### 2. Render the site locally

```bash
quarto render
```

### 3. Commit and push
```bash
git add .
git commit -m "some message"
git push origin master
```

Pushing to `master` triggers the `Publish to GitHub Pages` GitHub Action,
which renders the site and pushes the result to `gh-pages` automatically -
no further steps needed.

### 4. (Optional) Publish manually

If you want to publish without pushing to `master` first, or need to
re-publish by hand (e.g. the Action failed), you can still do it locally:

```bash
./scripts/publish.sh
```

This renders the site and pushes it to the `gh-pages` branch (equivalent to
`quarto publish gh-pages --no-browser --no-prompt`). The rendered `_site/`
folder is git-ignored - it's never committed to `master`.

> First time publishing this repo locally? Run `quarto publish gh-pages`
> once interactively (without `--no-prompt`) so it can create
> `_publish.yml` and record the `gh-pages` branch as the publish
> destination. After that, `scripts/publish.sh` will work
> non-interactively. (The GitHub Action doesn't need this - it publishes
> directly without `_publish.yml`.)





