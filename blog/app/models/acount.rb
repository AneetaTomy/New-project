class Acount < ActiveRecord::Base
	belongs_to :suplier
  has_one :acount_history
end
