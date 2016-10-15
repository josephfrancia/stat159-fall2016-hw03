.PHONY: clean data tests all eda regression session-info.txt

all: data tests eda-output.txt data regression.RData report.pdf

session-info.txt: 
	cd code; Rscript session-info-script.R

report.pdf: report/report.RMD 
	cd report; Rscript -e "rmarkdown::render('report.pdf')"

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