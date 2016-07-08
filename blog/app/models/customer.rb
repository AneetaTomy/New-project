class Customer < ActiveRecord::Base
	has_one :bank, foreign_key: 'cust_no'
end
