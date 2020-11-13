class SkillsController < ApplicationController
  before_action :find_user, only: %i[create]
  def create
    @skill = Skill.new(skill_params)

    if @skill.save
      redirect_to @profile, notice: 'Yay! 🎉 Your skill was successfully added.'
    else
      render :new
    end
  end

  private

  def find_user
    @user = current_user
  end

  def skill_params
    params.require(:skill).permit(:category, :experience, :current_user, :user_id)
  end
end
