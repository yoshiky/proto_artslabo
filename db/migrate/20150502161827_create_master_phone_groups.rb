class CreateMasterPhoneGroups < ActiveRecord::Migration
  def change
    create_table :master_phone_groups do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
