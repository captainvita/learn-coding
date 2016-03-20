puts "Let's practice everything."
puts "You\'d need to know \'bout escape with \\ that do \nnewlines and \ttabs."

# the <<END is a "heredoc". see the students qestions
poem = <<END
The lovely world
with logic so firmly planted
cannot discren
the needs of love
nor comprehend passion from intuition
and requires an explanation
where there is none.
END

puts "-------------"
puts poem
puts "-------------"


five = 10 - 2 + 3 - 6
puts "This should be five: #{five}"

def secret_formula(start_point)
	beans = start_point * 500
	jars = beans / 1000
	crates = jars / 100
	return beans, jars, crates
end


start_point = 10000
beans, jars, crates = secret_formula(start_point)

puts "With a starting point of: #{start_point}."
puts "We'd have #{beans} beans, #{jars} jars and #{crates} crates."

start_point = start_point / 10