the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

the_count.each do |numbers|
	puts "This is count #{numbers}"
end

fruits.each do |fruit|
	puts "A fruit of type: #{fruit}"
end

change.each do |i|
	puts "I got #{i}"
end

elements = []

(0..5).each do |i|
	elements.push(i)
end

elements.each do |i|
	puts "Element was: #{i}"
end