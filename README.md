# Personal Website

This is the repository for my personal website, made with Quarto.

The core pages are:

- `index.qmd` - an [about page](https://quarto.org/docs/websites/website-about.html) 
with my personal information. The education and employment information is drawn 
from ORCID.
- `posts.qmd` - a [listing page](https://quarto.org/docs/websites/website-listings.html)
set up to read from the `posts` directory. This contains blog posts.
- `publications.bib` - a standard page which reads in a bibtex file generated
by Zotero, containing a list of my publications. Lua filters are used to bold
face my name.
- `presentations.bib` - a standard page which reads in a bibtex file generated
by Zotero, containing a list of my presentations. Lua filters are used to bold
face my name and reformat url entries (all of which link to slides).

`chicago-mod.csl` is a light modification of the Chicago Manual of Style 
citation style which is the usual default. It lists entries in reverse 
chronological order.

The `_redirect` file contains rules to redirect traffic to blog posts which 
appeared on my previous website. 

Everything in the `slides` folder is read in as a site resource.

`custom.scss` modifes the `litera` theme by changing the heading font and the
base font.
