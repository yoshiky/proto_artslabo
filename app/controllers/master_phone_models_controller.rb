#coding: utf-8
class MasterPhoneModelsController < ApplicationController
  def index
    @phone_models = MasterPhoneModel.all
  end

  def new
    @phone_model = MasterPhoneModel.new
  end

  def create
    @phone_model = MasterPhoneModel.new(master_phone_model_params)
    if @phone_model.save
      redirect_to master_phone_models_path
    else
      redirect_to new_master_phone_models_path
    end
  end

  private
  def master_phone_model_params
    params.require(:master_phone_model).permit(:name)
  end

end
