class CreateDruggs < ActiveRecord::Migration
  def change
    create_table :druggs do |t|

      t.timestamps null: false
    end
  end
end
