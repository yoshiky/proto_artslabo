class RenamePotisionColumnToMasterPhoneModelShops < ActiveRecord::Migration
  def change
    rename_column :master_phone_model_shops, :potision, :position
  end
end
