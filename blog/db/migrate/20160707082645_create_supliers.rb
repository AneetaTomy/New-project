class CreateSupliers < ActiveRecord::Migration
  def change
    create_table :supliers do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
