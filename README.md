# hw03-casey-frock
This data set was taken from Matt Golder and his study on elections. The data set and helpful information can be found at: http://mattgolder.com/elections
Important elements that were kept in the clean data are the country name, was an election during a presidential cycle, the legislative type, the rules of the election (proportional, single member, etc.) the date of the election, the effective number of electoral parties, and the freedom of the electon.

Most of the elements are self explanitory, however a few require explanation. 
The freedom of the election, denoted by the variable fh_democracy, is a ranking used by freedom house to rate the relative freedom of elections around the world on a scale from 1 to 7.
Effective number of electoral parties used to demonstrate the parties that can actaully win a seat in the elections. Legislative type and election rules are simple, pertaining to the style of the legislature and the type of seats up for election, respectively. 

Beginning the wrangling process, there did not appear to be too much to accomplish.
The biggest task was removing columns that seemed to have little value to the set.
There was an extra column that accounted for dates, and I removed that section from the set.
By removing the column with the month, day, and year in the same column, the set automatically becomes cleaner by having separte columns.
There were a few minor changes such as removing the "&" symbol from Antigua and Barbuda and replacing it with "and".
This is mostly what my data set required, there did not appear to be too many complicated steps needed.

Next, actually initialized the repository on GitHub and pushed the hw to the site. Finally, saved the plot and pushed to GitHub.
