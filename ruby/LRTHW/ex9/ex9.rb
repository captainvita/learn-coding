=begin
Here's some new strange stuff going on!
BTW thats a multi line comment that starts with '=beginn' and ends with
=end

days = "Mon Tue Wed Thu Fri Sat Sun"
months = "Jan\nFeb\nMar\nApr\nMai\nJun\nJul\nAug" #\n means that the print continues in a new line

puts "Here are the days: #{days}"
puts "Here are the months: #{months}"

#This is a output over many lines that starts with 3 quotes and ends with 3
puts """
There's something going on here.
With the three double-quotes.
We'll be able to type as much as we like.
Even 4 lines if we want, or 5, or 6.
"""