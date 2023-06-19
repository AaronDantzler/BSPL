# BSPL
hurricanes.Rmd is an R Markdown File that prepares the raw hurricane data into a clean csv.

HurricaneData.ipynb is a Python script that takes a csv from hurricanes.Rmd and then runs the various ClimateBert models on the texts.

HurricaneAnalysis.ipynb and RawAnalysis.ipynb are Python scripts that look at the summary statistics and various regressions of the results of the ClimateBert model on the various news organizations.

Chunking.ipynb is a Python script that takes in a csv from hurricanes.Rmd and chunks the text into paragraphs instead of full news segments.

ChunkedHurricaneAnalysis.ipynb is another Python script like the other analysis scripts.
