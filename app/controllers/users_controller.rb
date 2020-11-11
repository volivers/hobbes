class UsersController < ApplicationController
  before_action :find_user, only: %i[show hobbies deck requests skillset profile manage update_fields update_resource]
  def show; end

  def manage
    @user = current_user
    @skill = Skill.new
  end

  def update_fields
    @user = current_user
    # set_task was already triggered by before_action

    if update_resource(@user, params)
      redirect_to profile_users_path, notice: "Profile was updated successfully."
    else
      render "users/profile"
    end
  end

  def hobbies; end

  def deck; end

  def requests; end

  def skillset; end

  def profile; end

  def update_resource(resource, params)
    if params[:user][:password].blank? && params[:user][:password_confirmation].blank?
      resource.update_without_password(user_params)
    else
      resource.update_with_password(user_params)
    end
  end

  # def chef
  #   @chef_name = @restaurant.chef_name
  # end
  private

  def user_params
    params.require(:user).permit(:location, :bio, :current_password)
  end

  def find_user
    # @task = Task.find(params[:id])
    @user = current_user
    # @restaurant = Restaurant.find(params[:id])
  end
end
