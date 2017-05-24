# cat ../thesis/*.md > temp.md
# cat temp.md | sed -r "s/ ([iwzoau]) / \1\\\\ /g" > document.md



pandoc document.md\
	--csl=citation-style.xml \
	--latex-engine=xelatex \
	-H wmi.sty \
	-V geometry:"inner=0cm, outer=0cm, top=0cm, bottom=0cm" \
	--standalone \
	--highlight-style tango \
	--smart \
	-V documentclass=report \
	-f markdown+footnotes+backtick_code_blocks+inline_notes+raw_html \
	-V classoption:"twoside,openright" \
	-V papersize=a4paper \
	-V fontsize=12pt \
	--metadata lang=pl-PL \
	-o document.pdf && \
xdg-open document.pdf

# rm temp.md
# rm document.md
