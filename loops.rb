class Test
	def sample
		for i in 1..5
			puts i
		end	
	end	
	def sample1
		(1..5).each do |i|
			puts i
		end
	end	
	def sample2
		5.times do |i|
			puts i
		end
	end	
	def sample3
		i = 1
		loop do
			puts i
			i=i+1
  		break if i == 5
	  end	
	end	
	def sample4
		i = 1
		begin
			puts i
			i=i+1
 	  end	until i == 5
	end	
	
end
t = Test.new	
t.sample
t.sample1
t.sample2
t.sample3
t.sample4