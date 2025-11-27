all: analysis.html

analysis.html: analysis.Rmd
	R -e "rmarkdown::render('analysis.Rmd', output_format='html_document')"

clean:
	rm -f analysis.html
