# Get input for the var filename from the commandline
filename = ARGV.first

prompt = ">>"

# txt opens the file mentione in filename
txt = open(filename)

puts "Here's your file #{filename}:"

# reads the file content from the filename
puts txt.read
puts prompt, prompt

# Close the file again
txt.close

print "Type the filename again: "
file_again = $stdin.gets.chomp

txt_again = open(file_again)

puts "Here's your file #{filename} again:"
print txt_again.read

txt_again.close