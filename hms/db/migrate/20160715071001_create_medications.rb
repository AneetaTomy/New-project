class CreateMedications < ActiveRecord::Migration
  def change
    create_table :medications do |t|
      t.string :dosage
      t.string :timing

      t.timestamps null: false
    end
  end
end
