class MasterPhoneModel < ActiveRecord::Base
  has_many :master_phone_group_master_phone_models
  has_many :master_phone_groups, through: :master_phone_group_master_phone_models

  has_many :shops
  has_many :shops, through: :master_phone_model_shops
end
