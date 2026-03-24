## code to prepare `DATASET` dataset goes here

file_path <- system.file("extdata", "earthquakes.tsv", package = "earthquake.analysis")
earthquakes <- read.delim(file_path)
usethis::use_data(earthquakes, overwrite = TRUE)
