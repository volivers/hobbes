class SkillsController < ApplicationController
  before_action :find_user, only: %i[show profile deck requests]
  def create
    raise
  end


  # def chef
  #   @chef_name = @restaurant.chef_name
  # end
  private

  # def user_params
  #   params.require(:user).permit(:location, :bio, :current_password)
  # end

  def find_user
    # @task = Task.find(params[:id])
    @user = current_user
    # @restaurant = Restaurant.find(params[:id])
  end
end
