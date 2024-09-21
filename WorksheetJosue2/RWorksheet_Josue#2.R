#1. Create a vector using : operator
#a. Sequence from -5 to 5. Write the R code and its output.
#Describe its output.
sequ <- -5:5
sequ
#This code outputs numbers from negative 5 to positive 5
#b. x <- 1:7. What will be the value of x?
x <- 1:7
x
#The value of x would be the whole numbers from 1 through 7

#2. Create a vector using seq() function
#a.seq(1, 3, by=0.2) specify step size .Write the R script and its output.
#Describe the output.
seq1 <- seq(1, 3, by = 0.2)
seq1
#The code outputs decimal numbers from 1 through 3 with intervals of 0.2

#3. A factory has a census of its workers. There are 50 workers in total. The following list shows their ages: 34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50,  37, 46, 25, 17, 37, 43, 53, 41, 51, 35, 24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26, 18.
#a. Access 3rd element, what is the value?
#b. Access 2nd and 4th element, what are the values?
#c. Access all but the 4th and 12th element is not included. Write the R script and its output.
workers <- list(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50,  37, 46, 25, 17, 37, 43, 53, 41, 51, 35, 24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26, 18)
#a
print(paste(workers[[3]], "is the value of the 3rd element"))
#b
print(paste(workers[[2]],"and", workers[[4]], "are the values of the 2nd and 4th element, respectively"))
#c
excludec <- workers[-c(4, 12)]
cat(unlist(excludec), "\n")

#4. Create a vector x <- c("first"=3, "second"=0, "third"=9). Then named the vector, names(x).

#a. Print the results. Then access x[c("first", "third")]. Describe the output.
#b. Write the Code and its output

#a&b
x <- c("first" = 3, "second" = 0, "third" = 9)
x
names(x)
x[c("first", "third")]
#The x first fully displays all of the elements of the vector then,the names(x) function call displayed the strings of the vector, while the third line of code outputted both the strings and numeric values of both the first and third elements.

#5. Create a sequence x from -3:2.
#a. Modify 2nd element and change it to 0; x[2] <- 0 x Describe the output.
#b.Write the code and its output.

#a&b
x <- c(-3:2)
x
x[2] <- 0
x
# Modifying the 2nd element updates the vectors 2nd element from -2 to 0

#6. A data chart was given showing the diesel fuel purchased by Mr. Cruz.
#a. Create a data frame for month, price per liter (php) and purchase-quantity (liter). Write the R scripts and its output.
#b. What is the average fuel expenditure of Mr. Cruz from Jan to June? Note: Use ‘weighted.mean(liter, purchase)‘. Write the R scripts and its output.

mrCruzdata <- data.frame(
  Month = c("Jan", "Feb", "Mar", "Apr", "May", "Jun"),
  Price_Per_Liter = c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00),
  Purchase_Quantity = c(25, 30, 40, 50, 10, 45)
)
mrCruzdata

avr_fuel <- weighted.mean(mrCruzdata$Price_Per_Liter, mrCruzdata$Purchase_Quantity)
print(paste("Mr. Cruz average fuel expenditure is", avr_fuel))

#7. R has actually lots of built-in datasets. For example, the rivers data “gives the lengths (in miles) of 141 “major” rivers in North America, as compiled by the US Geological Survey”.
#a. Type “rivers” in your R console. Create a vector data with 7 elements, containing the number of elements (length) in rivers, their sum (sum), mean (mean), median(median), variance(var), standard deviation(sd), minimum (min) and maximum (max).
#b.What are the results?
#c.Write the R scripts and its outputs
data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers), sd(rivers), min(rivers), max(rivers))
data
#The code results to the display of  data set's length, the summation of all the elements, its mean, median,variance,standard deviation, minimum, and maximum value ,respectively.

#8. A table was given with the 25 most powerful celebrities and their annual pay as ranked by the editions of Forbes magazine and as listed on the Forbes.com website.
#a. Create vectors according to the above table. Write the R scripts and its output.
#b. Modify the power ranking and pay of J.K. Rowling. Change power ranking to 15 and pay to 90. Write the R scripts and its output.
#c. Create an excel file from the table above and save it as csv file(PowerRanking). Import the csv file into the RStudio. What is the R script?
#d. Access the rows 10 to 20 and save it as Ranks.RData. Write the R script and its output.
#e. Describe its output

#a
power_Ranking <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25)

celebrity_Name <- c("Tom Cruise", "Rolling Stones", "Oprah Winfrey", "U2", "Tiger Woods", "Steven Spielberg", "Howard Stern", "50 Cent", "Cast of the Sopranos", "Dan Brown", "Bruce Springsteen", "Donald Trump", "Muhammad Ali", "Paul McCartney", "George Lucas", "Elton John", "David Letterman", "Phil Mickelson", "J.K. Rowling", "Bradd Pitt", "Peter Jackson", "Dr. Phil McGraw", "Jay Leno", "Celine Dion", "Kobe Bryant")

pay <- c(67, 90, 225, 110, 90, 332, 302, 41, 52, 88, 55, 44, 55, 40, 233, 34, 40, 47, 75, 25, 39, 45, 32, 40, 31)

power_Ranking
celebrity_Name
pay
#b
power_Ranking[19] <- 15
pay[19] <- 90
power_Ranking
pay
#c
forbes_data <- read.csv("PowerRanking.csv")
# d
ranks <- forbes_data[10:20, ]
save(ranks, file = "Ranks.RData")
#e
# The output is a table that shows elements from 10 through 20, listing the celebrities ranked from 10th to 20th place, along with their names and corresponding pay, as recorded within the PowerRanking CSV file

#9. Download the Hotels-Vienna https://tinyurl.com/Hotels-Vienna
#a. Import the excel file into your RStudio. What is the R script?
#b. How many dimensions does the dataset have? What is the R script? WHat is its output?
#c. Select columns country, neighbourhood, price, stars, accomodation_type, and ratings. Write the R script.
#d. Save the data as **new.RData to your RStudio. Write the R script.
#e. Display the first six rows and last six rows of the new.RData. What is the R script?
 
#a
library(openxlsx)
vienna <- read.xlsx("hotels-vienna.xlsx")
#b
dim(vienna)
#c
slccol <- vienna[, c("country", "neighbourhood", "price", "stars", "accommodation_type", "rating")]
#d
save(slccol, file = "new.RData")
#e
load("new.RData")
head(slccol)
tail(slccol)

#10. Create a list of ten (10) vegetables you ate during your lifetime. If none, just list down.
#a. Write the R scripts and its output.
#b. Add 2 additional vegetables after the last vegetables in the list. What is the R script and its output?
#c. Add 4 additional vegetables after index 5. How many datapoints does your vegetable list have? What is the R script and its output?
#d. Remove the vegetables in index 5, 10, and 15. How many vegetables were left? Write the codes and its output.


#a
vegie <- list("Squash", "Carrots", "Cabbage", "Corn", "Bitter gourd", "Bok Choy", "Beans", "Stringbeans", "Onion", "Garlic")
vegie
#b
vegie <- append(vegie, list("Broccoli", "Cauliflower"))
vegie
#c - There are 16 data points in this vegetable list
vegie <- append(vegie, list("Potato", "Capsicum", "Brinjal", "Beetroot"), after = 5)
vegie
#d - There are 13 vegetables left
vegie <- vegie[-c(5, 10, 15)]
vegie

















