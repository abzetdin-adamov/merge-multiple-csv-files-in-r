
path = "/Users/data/"
setwd(path)
files = list.files(path=path, pattern="csv")
mergedFile <- "mergedFile.csv"
allFileNames <- paste(files, collapse = " ")
commandString <- paste("cat", allFileNames, ">", mergedFile, sep = " ")
system(commandString)
