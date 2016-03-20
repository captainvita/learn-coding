# Hi I'm Vitali and im new to Ruby so i try to get into it.
# This is my first own written programm in Ruby. It is a simple calculator for two variables.
# I use in this programm functions, if/else, while, case statements, in/output and of course calculation
# I call this programm Vita's Calc

########## BEGIN OF DEFINING FUNCTIONS
def addition(var1, var2)
	op_symbol = '+'
	result = var1 + var2
	puts "Result: #{var1} #{op_symbol} #{var2} = #{result}"
	return result, op_symbol
end

def subtraction(var1, var2)
	op_symbol = '-'
	result = var1 - var2
	puts "Result: #{var1} #{op_symbol} #{var2} = #{result}"
	return result, op_symbol
end

def multiplication(var1, var2)
	op_symbol = '*'
	result = var1 * var2
	puts "Result: #{var1} #{op_symbol} #{var2} = #{result}"
	return result, op_symbol
end

def division(var1, var2)
	op_symbol = '/'
	result = var1 / var2
	puts "Result: #{var1} #{op_symbol} #{var2} = #{result}"
	return result, op_symbol
end

def menue()
	puts "-----------------------------------------------"
	puts "What you want to do?\n\n1: ADDITION\n2: SUBTRAKTION\n3: MULTIPLICATION\n4: DEVISION"
	print ">> "
end

def exit_or_continue_menue()
	puts "-----------------------------------------------"
	puts "What you want to do next?\n\n1: NEW calculation\n2: CONTINUE calculating with the result\n\n0 or any other key: QUIT"
	print ">> "
end


def two_var_input()
	print "1th value: "
	var1 = gets.chomp.to_i
	print "2nd value: "
	var2 = gets.chomp.to_i
	return var1, var2
end

def one_var_input()
	print "2nd value: "
	new_var = gets.chomp.to_i
	return new_var
end

def new_or_continue_input_gate(var1, var2, result, continue)
	# input of two variables
	if continue == 1
		var1, var2 = two_var_input()
	# input of one variable for continue calculating with last result
	elsif continue == 2
		puts "Value of last result: #{result}"
		var1 = result
		var2 = one_var_input()
	else
		puts "Something's wrong."
	end
	return var1, var2, result, continue
end
########## END OF DEFINING FUNCTIONS

########## BEGIN OF PROGRAM
continue, result = 1, 0

puts "-----------------------------------------------"
puts "Vita's Calc v0.1 -- 29th Feb 2016 (Leap day)\n\nThis is my first calculation program I wrote in Ruby.\nFor now it's just posible to type in two variables."

while continue == 1 || continue == 2 do

	# prints menue
	menue()

	# gets input from keyboard for mode selection (+, -, *, /)
	operation = gets.chomp.to_i

	#begin calculation and output of result
	case operation
		when 1
			var1, var2, result, continue = new_or_continue_input_gate(var1, var2, result, continue)
			result, op_symbol = addition(var1, var2)	
		when 2
			var1, var2, result, continue = new_or_continue_input_gate(var1, var2, result, continue)
			result, op_symbol = subtraction(var1, var2)
		when 3
			var1, var2, result, continue = new_or_continue_input_gate(var1, var2, result, continue)
			result, op_symbol = multiplication(var1, var2)
		when 4
			var1, var2, result, continue = new_or_continue_input_gate(var1, var2, result, continue)
			result, op_symbol = division(var1, var2)
		else
			puts "Something's wrong."
	end
	# Request input for new calc, continue with result or exiting proramm
	exit_or_continue_menue()
	continue = gets.chomp.to_i
end
puts "-----------------------------------------------"
print "You quit Vita's calc. Thank you for using it.\n\n"
########## END OF PROGRAM