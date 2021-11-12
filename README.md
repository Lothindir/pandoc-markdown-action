# Pandoc generator action

This action generates a PDF from a given Markdown file.

## Inputs

## `markdown`

**Required** The Markdown source file. Default `"rapport.md"`.

## `pdf`

**Required** The PDF output filename. Omit the _.pdf_ extension. Default `"Rapport"`.

## `template`

The choice of template(s) for listing and/or code highlights. You can use the following values (mutually exclusives):

Listings:
- listings (Pandoc default listings style)

Code highlights (one or more):
- kate
- espresso
- breezedark
- haddock
- monochrome
- pygments
- tango
- zenburn

No code highlights:
- none

All the templates must be separtated by commas. Ex `kate,espresso`, `listings`, `none`, ...

Default `"none"`.

## Example usage

```yml
uses: lothindir/pandoc-markdown-action@v0.1
with:
  markdown: "rapport.md"
  pdf: "Rapport"
  template: "kate,monochrome"
```