#Defining variables for carpooling and calculate options
cars = 100
space_in_car = 4
drivers = 30
passenger = 90
cars_not_driven = cars - drivers
cars_driven = drivers
carpool_capacity = cars_driven * space_in_car
average_passengers_per_car = passenger / cars_driven

#Output of calculations
puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "We can transport #{carpool_capacity} people per car."
puts "We have #{passenger} passengers to carpool today."
puts "We need to put about #{average_passengers_per_car} passangers in each car."