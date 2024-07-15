
# quarto-manuscript-template

[![License: CC BY 4.0](https://img.shields.io/badge/License-CC_BY_4.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)



This is a template repository for generating and publishing a scholarly article, using [Quarto](https://quarto.org). The manuscript website can be hosted on GitHub Pages, with automated deployments setup via GitHub Actions.

This template was based on the [Quarto Manuscript Template](https://github.com/quarto-ext/manuscript-template-jupyter). For more context about this process, or if you would like to start from scratch to setup your own project, consult the official [Quarto Projects Tutorial](https://quarto.org/docs/projects/quarto-projects.html).

Otherwise, if you'd like to build on top of this template repository, follow the instructions below.

## Prerequisites

### Quarto

You will need to install Quarto onto your local machine. You can [download it](https://quarto.org/docs/get-started/), or [install via homebrew](https://formulae.brew.sh/cask/quarto) (if you like that kind of thing):

```sh
brew install --cask quarto
```


If you use VS Code, you can also consider installing the [Quarto Extension](https://marketplace.visualstudio.com/items?itemName=quarto.quarto).



## Setup

### Repo Setup

[Make a copy](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template) of this template repository by clicking "Use this template" > "Create a new repository" from the green button on the top right of the template repository homepage on GitHub.

There is also a one-time setup step to get your GitHub Actions build to pass and get your site hosted. In your GitHub repository's settings, under the "pages" settings, configure GitHub Pages, specifically choosing to deploy from "GitHub Actions" source. For more details, see the "Deploying" section below.

> NOTE: the GitHub Actions build for your new repository may be failing initially, until you configure GitHub Pages. It's OK. You can always return to configure GitHub Pages when you are ready to host your site.

### Local Setup

Clone your copy of the repository onto your local computer, and navigate there from the command line.

Setup a project-specific virtual environment, if you like that kind of thing (otherwise use an existing environment):

```sh
# using python 3.10 for example, but you can choose a different version if you'd like:
conda create -n quarto-env python=3.10
conda activate quarto-env
```

Install dependencies, using pip:

```sh
pip install -r docs/requirements.txt
```

## Managing the Manuscript

Use the "docs/_quarto.yml" file to configure project settings and the manuscript build process.

Update the manuscript content and metadata in the "docs/index.qmd" file.

> NOTE: the manuscript content is currently provided in a single file, but it is possible to split this content up into multiple included files, if you like that kind of thing.

### Previewing


Previewing the site (runs on a local web server, as designated by the `project.preview.port` setting in the "docs/_quarto.yml" config file):

```sh
quarto preview docs/
```


### Building

Rendering the documentation (to "docs/_build", as designated by the `project.output-dir` setting in the "docs/_quarto.yml" config file):

```sh
quarto render docs/
```

You can inspect the resulting HTML file at "docs/_build/index.html" and PDF file at "docs/_build/index.pdf".

```sh
# open the website:
open docs/_build/index.html

# open the pdf:
open docs/_build/index.pdf
```


### Formatting for a Journal

There are [Quarto Journal Article Extensions](https://quarto.org/docs/extensions/listing-journals.html) that can be used to export the manuscript in a format suitable for submission to specified journals.


## Publishing to GitHub Pages

We are using the ["quarto-pages.yml" workflow configuration file](/.github/workflows/quarto-pages.yml) to deploy the site to GitHub Pages when new commits are pushed to the main branch.

In order for this to work, you first need to configure your GitHub Pages repo settings to publish via GitHub Actions.
