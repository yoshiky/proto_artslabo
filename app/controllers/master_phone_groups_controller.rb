#coding: utf-8
class MasterPhoneGroupsController < ApplicationController
  def index
    @phone_groups = MasterPhoneGroup.all
  end

  def new
    @phone_group = MasterPhoneGroup.new
  end

  def create
    @phone_group = MasterPhoneGroup.new(master_phone_group_params)
    if @phone_group.save
      redirect_to master_phone_groups_path
    else
      redirect_to new_master_phone_grouos_path
    end
  end

  def edit
    @phone_group = MasterPhoneGroup.find(params[:id])
  end

  def update
    @phone_group = MasterPhoneGroup.find(params[:id])
    if @phone_group.update_attributes(master_phone_group_params)
      redirect_to master_phone_groups_path
    else
      redirect_to edit_master_phone_grouos_path
    end
  end

  private
  def master_phone_group_params
    params.require(:master_phone_group).permit(:name, {:master_phone_model_ids => []})
  end

end
