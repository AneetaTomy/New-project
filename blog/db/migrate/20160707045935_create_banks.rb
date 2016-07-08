class CreateBanks < ActiveRecord::Migration
  def change
    create_table :banks do |t|
    	t.belongs_to :customer, index: true, unique: true, foreign_key: true
      t.integer :cust_no

      t.timestamps null: false
    end
  end
end
