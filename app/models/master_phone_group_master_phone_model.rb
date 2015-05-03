class MasterPhoneGroupMasterPhoneModel < ActiveRecord::Base
  belongs_to :master_phone_model
  belongs_to :master_phone_group
end
