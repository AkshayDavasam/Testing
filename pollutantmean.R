# this is not my code. subbu stole this code for me and gave it. jhefbvjhbrfv
pollutantmean <- function(directory, pollutant, id = 1:332) {

	files_list <- list.files(directory, full.names = TRUE) #creates a list of files
	dat <- data.frame()                #creates an empty data frame
	
	for (i in id) {
		                               # loops through the files, rbinding them together
		dat <- rbind(dat, read.csv(files_list[i]))
	}
	
	dat_subset <- dat[[ pollutant]]   #subsets the column that match the ' pollutant' argument
	mean(dat_subset, na.rm = TRUE)     #identifies the median of pollutant level
	                                   # while stripping out the NAs
}