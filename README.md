# Maternal Health Risk Analysis - Ananya Raman

This project analyzes the maternal health risk data authored by csafrit2 on Kaggle (https://www.kaggle.com/datasets/csafrit2/maternal-health-risk-data). After exploratory data analysis, PCA, K-means clustering, and random forest modeling is implemented to:
-	determine physiological differences between risk levels, 
-	identify features predictive of elevated maternal risk,
-	uncover clusters within physiological measurements.

## Project Structure
Dockerfile: defines the container environment
Makefile: builds the analysis.html report
README.md: project documentation
maternal_health.csv: dataset used in analysis
analysis.Rmd: analysis script with narrative
analysis.html: rendered HTML report

## Building the Docker Container
### 1. Build the container:
`docker build -t maternal-health .`
### 2. Run the container:
Linux/macOS: `docker run -d -p 8787:8787 -e PASSWORD=yourpassword -v$(pwd):/home/rstudio/project maternal-health`
Windows: `docker run -d -p 8787:8787 -e PASSWORD=yourpassword -v ${PWD}:/home/rstudio/project maternal-health`
### 3. Log into Rstudio
Open http://localhost:8787 in a browser and enter username: rstudio and password: yourpassword

## Building the Report
In the Rstudio terminal:
`cd project
make all`
This will generate analysis.html using the Makefile through rmarkdown::render, and store the report in the repository root and in your local folder.

## Developer Notes
This project is designed to be fully reproducible through the Makefile:
`all: analysis.html
analysis.html: analysis.Rmd
R -e "rmarkdown::render('analysis.Rmd', output_format='html_document')"`
Running `make all` will automatically rebuild the final report from the R Markdown source.
