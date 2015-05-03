class CreateMasterPhoneGroupMasterPhoneModels < ActiveRecord::Migration
  def change
    create_table :master_phone_group_master_phone_models do |t|
      t.integer :master_phone_model_id
      t.integer :master_phone_group_id

      t.timestamps null: false
    end
  end
end
