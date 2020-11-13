class SkillsController < ApplicationController
  before_action :find_user, only: %i[create]
  def create
    @skill = Skill.new(skill_params)
    @skill.user = current_user
    if @skill.save
      redirect_to profile_users_path, notice: 'Yay! 🎉 Your skill was successfully added.'
    else
      render 'users/profile'
    end
  end

  private

  def find_user
    @user = current_user
  end

  def skill_params
    params.require(:skill).permit(:category, :experience, :current_user)
  end
end

  # def create
  #   @restaurant = Restaurant.find(params[:restaurant_id])
  #   @review = Review.new(review_params)
  #   @review.restaurant = @restaurant
  #   if @review.save
  #     redirect_to restaurant_path(@restaurant)
  #   else
  #     render 'restaurants/show'
  #   end
  # end

  # private

  # def review_params
  #   params.require(:review).permit(:content)
  # end
