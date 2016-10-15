.PHONY: clean data tests all eda regression session-info.txt

all: data tests eda regression report.pdf

session-info.txt: session-info-script.R
	cd code; cd scripts; Rscript $^

report.pdf: 
	cd report; Rscript -e "rmarkdown::render('report.Rmd')"


clean: 
	cd report; rm report.pdf

data: 
	cd data; curl -O "http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv"

tests:
	cd code; Rscript test-that.R

eda:
	cd code; cd scripts; Rscript eda-script.R Advertising.csv

regression:
	cd code; cd scripts; Rscript regression-script.R Advertising.csv