class CreateAcounts < ActiveRecord::Migration
  def change
    create_table :acounts do |t|
    	t.belongs_to :suplier, index: true
      t.string :acount_number

      t.timestamps null: false
    end
  end
end
