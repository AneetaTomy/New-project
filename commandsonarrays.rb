class Commandsonarrays
	def array1
		a=[1,2,3,4,5,6,7,8,9,10]
		puts "Elements in arrays are"
		puts a
	end	
	def reject_method
		a=[1,2,3,4,5,6,7,8,9,10]
		puts "reject all even nos"
		puts a.reject { |i| i.even? }
		
	end	
	def keep_method
		a=[1,2,3,4,5,6,7,8,9,10]
		puts "keep all even nos"
		puts a.keep_if { |i| i.even? }
		
	end	
end
c=Commandsonarrays.new	
c.array1
c.reject_method
c.keep_method