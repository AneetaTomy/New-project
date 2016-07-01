class Sorting
	def sort_method
		a = [1,5,2,4,7,9]
		puts a.sort
	end
	def sort_bang
		a = [1,5,2,4,7,9]
		puts a.sort!
	end
end
s=Sorting.new
s.sort_method	