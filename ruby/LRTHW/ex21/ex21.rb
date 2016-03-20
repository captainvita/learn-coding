def add(a, b)
	puts "ADDING #{a} + #{b}"
	return a + b
end

def sub(a, b)
	puts "SUBTRACKTING #{a} - #{b}"
	return a - b
end

def multi(a, b)
	puts "MULTIPLYING #{a} * #{b}"
	return a * b
end

def div(a, b)
	puts "DIVIDING #{a} / #{b}"
	return a /  b
end

puts "Let's do some math with just functions!"

age = add(30, 5)
height = sub(78, 4)
weight = multi(90, 2)
iq = div(100, 2)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"

what = add(age, sub(height, multi(weight, div(iq, 2))))

puts "That becomes: #{what}. Can you do that by hand?"