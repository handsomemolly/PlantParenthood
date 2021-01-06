class UserPlantsController < ApplicationController
  def new
    @user_plant = UserPlant.new
    @plants = Plant.all
  end

  def create
    # @user_plant = UserPlant.create(user_id: params[:user_id], plant_id: params[:plant_id])
    userplant_params[:plant_ids].each {|plant_id| UserPlant.create(user_id: @user.id, plant_id: plant_id)}
  
    redirect_to @user
  end

  private
  
  def userplant_params
    params.permit(plant_ids:[])
  end
end
