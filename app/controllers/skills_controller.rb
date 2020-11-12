class SkillsController < ApplicationController
  before_action :find_user, only: %i[show profile deck requests]
  def create
    @skill = Skill.new(skill_params)

    if @skill.save
      redirect_to @profile, notice: 'Yay! 🎉 Your hobby was successfully added.'
    else
      render :new
    end
  end

  private

  # def user_params
  #   params.require(:user).permit(:location, :bio, :current_password)
  # end

  def find_user
    # @task = Task.find(params[:id])
    @user = current_user
    # @restaurant = Restaurant.find(params[:id])
  end

  def skill_params
    params.require(:skill).permit(:category, :experience, :current_user, :user_id)
  end
end
