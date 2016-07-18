class Drugg < ActiveRecord::Base
	has_many :users
	has_many :medications, through: :users
	DEFAULTDRUG = ['Paracetemol', 'Derphillin', 'Croxin']
end
