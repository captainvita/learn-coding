def cheese_n_crackers (cheese_count, crackers_count)
	puts "You have #{cheese_count} cheese!"
	puts "You have #{crackers_count} boxes crackers"
	puts "That's enoug for a party. Get a blanket!"
end

puts ">>"
puts "We can just give the function numbers."
cheese_n_crackers(20, 30)

puts ">>"
puts "OR, we can use variables #{amount_cheese} from our script."
amount_cheese = 10
amount_crackers = 50
cheese_n_crackers(amount_cheese, amount_crackers)

puts ">>"
puts "We can even do math inside too:"
cheese_n_crackers(10 + 20, 5 + 5)

puts ">>"
puts "And we can combine the two, variables and math:"
cheese_n_crackers(amount_cheese + 100, amount_crackers - 25)

puts ">>"
puts "And we can even type the arguments in."
print "Amount of cheese: "
amount_cheese = gets.chomp.to_i
print "Amount of crakers: "
amount_crackers = gets.chomp.to_i

cheese_n_crackers(amount_cheese, amount_crackers)