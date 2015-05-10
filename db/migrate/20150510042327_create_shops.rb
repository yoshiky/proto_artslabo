class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.integer :master_phone_group_id

      t.timestamps null: false
    end
  end
end
