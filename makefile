.PHONY: clean data all

all: data eda-output.txt data regression.RData report.pdf

report.pdf: report/report.RMD 
	cd report; pandoc report.RMD -s -o report.pdf


regression.RData: code/regression-script.R data/Advertising.csv
	cd code; Rscript regression-script.R Advertising.csv

eda-output.txt: code/eda-script.R data/Advertising.csv
	cd code; Rscript eda-script.R Advertising.csv

clean: 
	cd report; rm report.pdf

data: 
	cd data; curl -O "http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv"