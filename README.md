# Merging multiple CSV-files into single one using R
## The most efective way

![image](http://cdn.ilovefreesoftware.com/wp-content/uploads/2010/09/Combine-Excels.jpg)

CSV format is native for many of IS when you want to export data. 
As a result you may have some time huge number of separate CSV files.

At the same time its highly convenient to deal with single file while you use environments like R or Python for Data Analytics.
All know that this is trivial way to use bash commands to merge TEXT or CSV files to single file:

```cat file-1.csv file-2.csv file-3.csv > mergedFile```

But is there a way to do the same merge without leaving R environment.
There are a lot solution proposals based on the same approach:
1. reading CSV files into memory as a Data Frame ```read.csv()```
2. joining Data Frames using ```rbind()```
3. writing merged Data Frame to CSV file

There are several issue with this approach:
- reading many CSV files into memory takes time
- the total size of resulting Data Frame is limited with 1-5 millions records depending on available memory and number of attributes

My idea was about why not to use same way used in bash but implemented in R, since R supports the command ```system()``` that enables running of system commands. 
For more details see attached file.
