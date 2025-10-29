
# **Portfolio**

- This portfolio was built using [Quarto](https://quarto.org/)
- The basic structure is in file [index.qmd](index.qmd)
- Some configurations are in [_quarto.yml](_quarto.yml)
- Files (logo, CVs) are in [assets](assets)

## If you want to run this yourself do the following:

### 0. Isntall all requirements

```bash
pip install -r requirements.txt
```

or, if you prefer

```bash
conda env create -f environment.yml
```

### 1. Preview the site locally

```bash
quarto preview
```

If it's all OK, go on and

### 2. Render the site locally

```bash
quarto render
```

### 3. Commit
```bash
git add .
git commit -m "some message"
git push origin
```

### 4. Publish the site
```bash
quarto publish gh-pages
```





