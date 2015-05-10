class CreateMasterPhoneModelShops < ActiveRecord::Migration
  def change
    create_table :master_phone_model_shops do |t|
      t.references :shop, index: true, foreign_key: true
      t.references :master_phone_model, index: true, foreign_key: true
      t.integer :potision

      t.timestamps null: false
    end
  end
end
