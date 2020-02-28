#!/usr/bin/env bash

# Format the bib file according to DOI rules. Taken from Janek Bevendorff.
# Requires the `bibtool` and `moreutils` packages.

bibtool -- 'print.align = 24' -- 'print.align.key = 0' \
        -- 'print.equal.right = off' -- 'pass.comments = on' \
        -- 'print.line.length = 1000' -- 'print.use.tab = off' \
        -- 'rewrite.rule = {doi# "https?://.*doi.*\.org/\(10\.[0-9]+/.+\)"# "\1"}' \
        literature.bib | sed '/./,$!d' | sponge literature.bib
