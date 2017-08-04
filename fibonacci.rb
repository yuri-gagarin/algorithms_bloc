module Fibonacci

	class Iterative

		def self.compute(index)
			first_num = 0
			second_num = 1

			index.times do 
				third_num = first_num + second_num
				first_num = second_num
				second_num = third_num 
			end

			puts first_num
			return first_num
		end

	end

	class Recursive

		def self.compute(index)

			if (index <= 1)
				return index
			elsif 
				self.compute(index - 1) + self.compute(index -2)
			end
		end

	end 

end

puts "Welocome to the Fibonacci calculator";
puts "**************************************"
puts "Please enter the index of the number you wish to find"

index = gets.chomp.to_i

puts "Would you like to use RECURSIVE or ITERATIVE method?"

method = gets.upcase.chomp

if(method == "RECURSIVE")

	Fibonacci::Recursive.compute(index)

elsif(method == "ITERATIVE" )

	Fibonacci::Iterative.compute(index)

end


