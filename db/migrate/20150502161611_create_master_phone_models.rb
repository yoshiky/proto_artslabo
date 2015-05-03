class CreateMasterPhoneModels < ActiveRecord::Migration
  def change
    create_table :master_phone_models do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
