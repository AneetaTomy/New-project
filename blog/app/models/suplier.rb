class Suplier < ActiveRecord::Base
	has_one :acount
  has_one :acount_history, through: :acount
end

