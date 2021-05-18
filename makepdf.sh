# Requires pandoc and xelatex.
PANDOC=`which pandoc`
$PANDOC  --output "thesis.pdf"  --variable mainfont="Gentium Plus"  --template="typesetting/style/template.tex"  --include-in-header="typesetting/style/preamble.tex" --toc --variable=fontsize:12pt --variable=documentclass:report  --pdf-engine=xelatex "Chapters"/*.md "Appendices"/*md  "Chapters/metadata.yml"  --verbose