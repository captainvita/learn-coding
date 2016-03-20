# getting filename from commandline
filename = ARGV.first

puts "We're going to erase #{filename}"
puts "If you don't want that, git CTRL-C (^C)."
puts "If you do want that hit RETURN."

$stdin.gets

puts "Opening the file ..."
target = open(filename, 'w') # open and erase/create file from/with filename in writing only mode

puts "Truncating the file. Goodbye!"
#target.truncate(0)

puts "Now I'm going to ask you for three lines."

print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp

puts = "I'm going to write these to the file."

# writing the inpot into the file, line for line
target.write(line1 + "\n" + line2 + "\n" + line3 + "\n")

# closing the file
puts "And finally, we close it."
target.close