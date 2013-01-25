# Makefile for Sphinx documentation 
#

GH_PAGES_SOURCES = doc

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
PAPER         =
BUILDDIR      = build

# Internal variables.
PAPEROPT_a4     = -D latex_paper_size=a4
PAPEROPT_letter = -D latex_paper_size=letter
ALLSPHINXOPTS   = -d $(BUILDDIR)/doctrees $(PAPEROPT_$(PAPER)) $(SPHINXOPTS) doc
# the i18n builder cannot share the environment and doctrees with the others
I18NSPHINXOPTS  = $(PAPEROPT_$(PAPER)) $(SPHINXOPTS) doc

.PHONY: help gh-revert gh-push html

help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  gh-revert  to revert changes made to gh-pages branch and switch back to master"
	@echo "  gh-push    to push HTML documentation in gh-pages branch"
	@echo "  html       to make standalone HTML files"

gh-revert:
	git checkout -f --
	rm -rf $(GH_PAGES_SOURCES) build 
	git checkout master 

gh-push:
	rm -rf $(GH_PAGES_SOURCES) build
	git add -A 
	git commit -m "Generated gh-pages for `git log master -1 --pretty=short --abbrev-commit`" && git push origin gh-pages 
	git checkout master


html:
	$(SPHINXBUILD) -b html $(ALLSPHINXOPTS) $(BUILDDIR)/html
	@echo
	@echo "Build finished. The HTML pages are in $(BUILDDIR)/html."

