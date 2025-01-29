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
    echo 'Teste Realizado, Ambiente ,Data, Ano';vars=$(cat vars.yaml); \
    subtitle=$(echo "$vars" |grep subtitle |cut -d ':' -f2); \
    ambiente=$(echo "$vars" |grep ambiente |cut -d ':' -f2); \
    data=$(echo "$vars" |grep date |cut -d '|' -f2 |tr '-' '/'); \
    ano=$(echo "$data" |cut -d '/' -f3); \
    echo "$subtitle,$ambiente,$data,$ano"
    echo
    echo 'UID, Vulnerabilidade, Risco'
    sed -n '/# Vulnerabilidades/,/\\end{tabular}/p' "$1" |\
        grep '\\rowcolor'  |cut -d "}" -f2 | \
        sed 's/&/,/g' |cut -d '\' -f1
fi

