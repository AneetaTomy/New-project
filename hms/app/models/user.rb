class User < ActiveRecord::Base
   belongs_to :drugg
   belongs_to :medication 	
   validates :firstname, presence: true
   validates :lastname, presence: true
   validates :email, presence: true
   validates :password, presence: true,
                 length: { minimum: 5 }, confirmation: true  
   validates :confirmpassword, presence: true,
                 length: { minimum: 5 }
    
  attr_accessor :defaultdrugs

end





