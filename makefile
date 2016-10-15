.PHONY: clean data tests all eda regression

all: data tests eda-output.txt data regression.RData report.pdf


regression.RData: code/scripts/regression-script.R data/Advertising.csv
	cd code; cd scripts; Rscript regression-script.R Advertising.csv

eda-output.txt: code/scripts/eda-script.R data/Advertising.csv
	cd code; cd scripts; Rscript eda-script.R Advertising.csv

clean: 
	cd report; rm report.pdf

data: 
	cd data; curl -O "http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv"

tests:
	cd code; Rscript test-that.R

eda:
	cd code; cd scripts; Rscript eda-script.R Advertising.csv

regression:
	cd code; cd scripts; Rscript regression-script.R ../../data/Advertising.csv