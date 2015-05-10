class MasterPhoneModelShop < ActiveRecord::Base
  belongs_to :shop
  belongs_to :master_phone_model
end
