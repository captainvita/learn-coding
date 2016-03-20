class Song # defining a class

	def initialize(lyrics) # initalizer for the class
		@lyrics = lyrics
	end

	# printing each part of the class variable lyrics in a line
	def sing_me_a_song() 
		@lyrics.each {|line| puts line}
	end

	def good_comment()
		puts "\nWow that's a great song!"
	end

	def bad_comment()
		puts "\nWow, thats ... how to say? ... odd!"
	end
end

lyrics_happy_bday = ["Happy birthday to you",
         				"I don't want to get sued",
         				"So I'll stop right there"]
happy_bday = Song.new(lyrics_happy_bday)

lyrics_bulls_on_parade = ["They rally around tha family",
         						"With pockets full of shells"]
bulls_on_parade = Song.new(lyrics_bulls_on_parade)

happy_bday.sing_me_a_song()
happy_bday.bad_comment()
puts " "
bulls_on_parade.sing_me_a_song()
bulls_on_parade.good_comment()