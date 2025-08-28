setwd("C:\\Users\\IT24103987\\Desktop\\IT24103987")
getwd()

#. Import the dataset (’Exercise – Lab 05.txt’) into R and store it in a data frame called ”Delivery Times”.\
Delivery_Time <- read.table("Exercise - Lab 05.txt", header = TRUE)
head(Delivery_Time)

#Draw a histogram for deliver times using nine class intervals where the lower limit is 20 and upper limit is 70. Use right open intervals
histogram <- hist(Delivery_Time$Delivery_Time, 
                  main = "Histogram of Delivery Times", 
                  breaks = seq(20, 70, length = 10), 
                  xlab = "Delivery Time", 
                  ylab = "Frequency")

#Draw a cumulative frequency polygon (ogive) for the data in a separate plot
hist_data <- hist(Delivery_Time$Delivery_Time, 
                  breaks = seq(20, 70, length = 10), 
                  plot = FALSE)

cum_freq <- cumsum(hist_data$counts)

plot(hist_data$mids, 
     cum_freq, 
     type = "o",  # "o" ensures both points and lines are drawn
     xlab = "Delivery Time", 
     ylab = "Cumulative Frequency", 
     main = "Cumulative Frequency Polygon (Ogive)",
     pch = 16)   

