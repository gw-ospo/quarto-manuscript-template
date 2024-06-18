# Quarto Manuscript Template



## Generating the Manuscript

Generating the template:

```sh
# https://quarto.org/docs/projects/quarto-projects.html
quarto create project manuscript quarto-manuscript-template
```



## Building the Manuscript

Rendering the documentation (to "docs/_manuscript"):

```sh
quarto render docs/
```

## Formatting for Journal

Install formatting extension for journal (e.g. PLOS):

```sh
quarto install extension quarto-journals/plos
```

Update config file to specify the corresponding journal format option.

https://quarto.org/docs/extensions/listing-journals.html
