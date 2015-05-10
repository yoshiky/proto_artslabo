class Shop < ActiveRecord::Base
  belongs_to :master_phone_group

  has_many :master_phone_model_shops
  has_many :master_phone_models, through: :master_phone_model_shops
end
