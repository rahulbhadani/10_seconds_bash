# Compile your R Markdown file in bash and then open with native Ubuntu pdf reader
Rmd() {

    if [ -z "$1" ]; then
        echo "Please pass file argument."
        return 1
    fi

    BASE=$(echo $1 | cut -d'.' -f 1).pdf
    Rscript -e "rmarkdown::render('$1')" && evince $BASE
}
