class User < ActiveRecord::Base
   validates :firstname, presence: true
   validates :lastname, presence: true
   validates :email, presence: true
   validates :password, presence: true,
                 length: { minimum: 5 }, confirmation: true  
   validates :confirmpassword, presence: true,
                 length: { minimum: 5 }
    
  

end





