class Medication < ActiveRecord::Base
	has_many :users
	has_many :druggs, through: :users 
	#DOSAGE=['mg','ml']
	#TIMING=['Once','Twice','Thrice']
end
