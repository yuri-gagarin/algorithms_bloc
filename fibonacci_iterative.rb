class FibonacciIterative

	def self.calculate(index)

		first_num = 0
		second_num = 1
		num_array = []

		index.times do 

			third_num = first_num + second_num
			first_num  = second_num
			second_num = third_num
			num_array.push(first_num)

		end

		puts num_array
		puts first_num

	end


end

puts "Welcome to Fibonacci Calculator"
puts "Enter an index for the number"
index = gets.chomp.to_i

FibonacciIterative.calculate(index)
