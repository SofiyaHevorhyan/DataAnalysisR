startup<- read.csv(file="./data/CAX_Startup_Data.csv", header=TRUE,as.is=T)

# replacing 'No Info' and 'blanks' with NA
startup[startup=="No Info"]<- NA
startup[startup==""]<- NA

# converting column as date
startup$Est..Founding.Date <- as.Date(startup$Est..Founding.Date, "%m/%d/%Y")
startup$Last.Funding.Date <- as.Date(startup$Last.Funding.Date, "%m/%d/%Y")
