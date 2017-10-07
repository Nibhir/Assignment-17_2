library("xlsx")
gm=read.xlsx("Dataset.csv.xlsx",sheetName = "Sheet1",header = T)
attach(gm)

#This model includes only the variables mentioned in the assignment 

model=lm(Price~Mileage+Make+Cylinder+Liter+Cruise+Sound+Leather, data = gm)
summary(model)

model1=step(model) #for better R Squared value
summary(model1)

#below model includes all the variables of GM Cars, 
#Cruise, Sound, Leather have binary values so output shows some NAs

regr_model=lm(Price ~ ., data = gm)
summary(regr_model)


reduced_model=step(regr_model) #for better R Squared value
summary(reduced_model)
