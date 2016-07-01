class Downcase
	def down_case
		a= "ABC"
        puts "downcase of a"
		puts a.downcase
    end
    def down_case_bang
    	puts "downcase! of a"
		a= "ABC"
		puts a.downcase!
    end
    def uniquee
    	a=[1,2,3,2,1]
        puts "after uniq method"
    	puts a.uniq
    end	
    def unique_bang
    	a=[1,2,3,2,1]
        puts "after uniq! method"
    	puts a.uniq!
    end	
end
s= Downcase.new
s.down_case
s.down_case_bang
s.uniquee
s.unique_bang
