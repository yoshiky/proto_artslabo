class MasterPhoneGroup < ActiveRecord::Base
  has_many :master_phone_group_master_phone_models
  has_many :master_phone_models, through: :master_phone_group_master_phone_models

  has_many :shops
end
