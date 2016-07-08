class CreateAcountHistories < ActiveRecord::Migration
  def change
    create_table :acount_histories do |t|
    	t.belongs_to :acount, index: true
      t.integer :credit_rating

      t.timestamps null: false
    end
  end
end
