people, cats, dogs = 20, 30, 15

if people < cats
	puts "Too many cats! The world is doomed!"
end

cats -= 15

if people > cats
	puts "Not many cats! The world is save!"
end

if people < dogs
	puts "The world is drooled on!"
end

if people > dogs
	puts "The world is dry!"
end

dogs += 5

if people >= dogs
	puts "Poeple are greater then or equal to dogs."
end

if people == dogs
	puts "People are dogs."
end