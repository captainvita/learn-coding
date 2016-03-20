name = 'Zed A. Shaw'
age = 35
height = 74 #inches
weight = 180 #lbs
eyes = 'Blue'
teeth = 'White'
hair = 'Brown'

lbs_to_kg = 0.454 #lbs to kg conversion
inch_to_cm = 2.45 #inch to cm conversion

puts "Let's talk about #{name}."
puts "He's #{height} inches (#{height * inch_to_cm} cm) tall."
puts "He's #{weight} pounds (#{weight * lbs_to_kg}kg) heavy."
puts "Actually that's not too heavy."
puts "He's got #{eyes} eyes and #{hair} hairs."
puts "His teeth are usually #{teeth}, depending on the coffee."

#This line is tricky, try to get it exactly right
puts "If i add #{age}, #{height} and #{weight} i get #{age + height + weight}"