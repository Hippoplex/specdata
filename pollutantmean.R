pollutantmean <- function(directory, pollutant, id = 1:332) {
  
  ##create a character vector of the names of files in the named directory.
  files <- list.files(directory ,full.names = TRUE) 
  
  ##create data frame to load data into
  dat <- data.frame()
  
  ##create a 'for loop' to enter data into the data frame
  
  for (i in id) {
    dat <- rbind(dat, read.csv(files[i]))
  }
  
  ## calulate the mean without the NAs of the pollutant
  mean(dat[, pollutant], na.rm = TRUE)
}
