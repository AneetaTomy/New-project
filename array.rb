class Array
	def array1
		puts "Array1 elements"
		puts (1..5).to_a
	end
	def array2
		puts "Array2 elements"
		puts (1..5).to_a.to_s
	end

end
a= Array.new
a.array1
a.array2

