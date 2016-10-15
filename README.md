stat159-fall-2016
---
[Github website](https://github.com/josephfrancia/stat159-fall2016-hw03)

In this project, I am analyzing the relationship between advertising (tv, newspaper, and radio) and sales. I have four main directories: **code**, **data**, **report**, and **images**. **Images** contains histograms of my datasets, scatterplots of my simple linear regression, a scatterplot matrix, a normal qq plot, a residual plot, and a scale-location plot. **Code** contains three subdirectories, titled **functions** (contains an r-script with user-defined regression functions), **tests** (contains an r-script with tests for these regression functions), and **scripts** (contains code where most of the work in this project is done). **Data**, meanwhile, contains the relevant data for this project (regression data, advertising dataset, correlation matrix, etc.). Finally, **report** contains the RMD and PDF versions of the report. 

Running the command ```make all``` will cause report.pdf to appear in the **report** section of the project. This command will also cause all the images to be placed in the **images** section of the project. This command will also cause the data files  to be placed in the **data** section of the project.

Running the command ```make clean``` will remove report.pdf from the **report** section of the project.

I licensed this project under a [Creative Commons Attribution-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-sa/4.0/).