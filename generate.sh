#!/bin/bash

# *************************
# * Gerador de relatórios *
# *************************


if [[ -z $1 ]];then
	echo 'Modo de uso: ./generate.sh + src/Nome_do_relatório.md'
else
    temp=$(echo ${1##*/})
	awk 'FNR==1{print ""}1' templates/structure.md "$1" | \
	pandoc -o "output/${temp%.md}.pdf" \
	--from markdown+yaml_metadata_block+raw_html \
	--template eisvogel \
	--table-of-contents \
	--toc-depth=6 \
	--number-sections \
	--top-level-division=chapter \
	--highlight-style=espresso \
	--indented-code-classes=numberLines \
	--filter=pandoc-mustache

# Print vuln 
# Em construção...

fi

