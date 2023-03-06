data <- read.csv('~/Desktop/math_448/Project/data.csv')
print(paste("Number of records: ", nrow(data)))
print(paste("Number of features: ", ncol(data)))
head(data)
summary(data)
colnames(data)
str(data)



length(unique(data$city)) #There are 44 unique city. 
length(unique(data$country)) #There is only 1 country which should mean nothing
length(unique(data$statezip)) #77 different kinds of statezip
length(unique(data$street)) #4525 that is too much




data$city <- unclass(data$city) # categorical into numerical(data$city)
head(data$city)
head(data)
data_x <- (data$price)
data_x
data_y <- data[,c("bathrooms","bedrooms","sqft_living", "sqft_lot",
"floors", "waterfront","view","condition","sqft_above","yr_built","yr_renovated","city")]
data_y <- (data_y)
head(data_y)
cor(data_x, data_y)
data_y
 