class Loopingarray
	def array1
		a=[1,2,3]
		puts "simply looping an array"
		a.each do |i|
			puts i
		end	
	end
	def array2
		a={"a"=>1 ,"b"=>2}
		puts "Hash looping"
		a.each do |k,v|
		puts "value of #{k} is #{v}"
	    end
	end
end
l=	Loopingarray.new
l.array1
l.array2
