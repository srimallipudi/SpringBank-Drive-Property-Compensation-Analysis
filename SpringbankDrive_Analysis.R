rm(list=ls(all=TRUE))
SBD_data <- read.csv("Springbank Drive Revised.csv", header=TRUE)
colnames(SBD_data)
saleprice <- SBD_data[,"PRICE"]
frontagearea <- SBD_data[,"LFA"]
lanesroad <- SBD_data[,"LANESRD"]
oneandhalf.storey <- SBD_data[,"One.and.a.Half.Storey"]
two.storey <- SBD_data[,"Two.Storey"]
age <- SBD_data[,"AGEYR"]
more.than.three.ame <- SBD_data[,"More.than.Three.Exterior.Amenities"]
only.brick <-  SBD_data[,"Only.Brick"]
carport <- SBD_data[,"Carport"]
one.car <- SBD_data[,"One.Car.Garage"]
two.car <- SBD_data[,"Two.Car.Garage"]
avg.view <- SBD_data[,"Average.View"]
good.view <- SBD_data[,"Good.View"]
centair <- SBD_data[,"CENAIR"]
pool <- SBD_data[,"POOL"]
avg_incond <- SBD_data[,"Average.Interior.Condition"]
good_intcond <- SBD_data[,"Good.Interior.Condition"]
exc_intcond <- SBD_data[,"Excellent.Interior.Condition"]
bsmtarea <- SBD_data[,"BSMTFINAREA"]
trafficcount <- SBD_data[,"TRAFCOUNT"]

cor(cbind(saleprice, frontagearea, trafficcount, bsmtarea))

mod.1 <- lm(saleprice ~ frontagearea + trafficcount + two.storey + avg.view + good.view + good_intcond + exc_intcond + bsmtarea)
summary(mod.1)
standardized.residual = rstandard(mod.1)
predicted.saleprice <- predict(mod.1)

plot(predicted.saleprice,standardized.residual)

traffic_counts <- SBD_data[,"TRAFCOUNT"]

mod.2 <- lm(saleprice ~ frontagearea + lanesroad + two.storey + avg.view + good.view + good_intcond + exc_intcond + bsmtarea )
summary(mod.2)
standardized.residual2 = rstandard(mod.2)
predicted.saleprice2 <- predict(mod.2)

plot(predicted.saleprice2,standardized.residual2)
