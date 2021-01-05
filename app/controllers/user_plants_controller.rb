class UserPlantsController < ApplicationController
  def new
  end

  def create
    @user_plant = UserPlant.create(userplant_params)
    redirect_to user_path
  end

  private
  
  def userplant_params
    params.require(:user_plants).permit(:user_id, :plant_id)
  end
end
