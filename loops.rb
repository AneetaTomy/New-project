class Loops
	def using_for
		puts "using for loop"
		for i in 1..5
			puts i
		end	
	end	
	def using_each
		puts "using each loop"
		(1..5).each do |i|
			puts i
		end
	end	
	def using_times
		puts "using times loop"
		5.times do |i|
			puts i
		end
	end	
	def using_loop
		i = 1
		puts "using loop"
		loop do
			puts i
			i=i+1
  		break if i == 5
	  end	
	end	
	def using_until
		i = 1
		puts "using until loop"
		begin
			puts i
			i=i+1
 	  end until i == 5
	end	
	
end
t = Loops.new	
t.using_for
t.using_each
t.using_times
t.using_loop
t.using_until