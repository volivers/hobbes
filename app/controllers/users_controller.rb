class UsersController < ApplicationController
  before_action :find_user, only: %i[show profile deck requests]
  def show; end

  def profile
    @users = User.all

    @experience = [['Rookie', '1'], ['Good', '2'], ['Master', '3']];
    @categories = ['Hiking', 'Backpacking', 'Camping', 'Hunting', 'Fishing', 'Archery','Canoeing',
    'Kayaking', 'Running', 'Geocaching', 'Bird Watching', 'Beekeeping', 'LARPing',
    'Parkour', 'Astronomy', 'Kite Flying', 'Bread Making', 'Origami', 'Photography',
    'Crocheting', 'Knitting', 'Embroidery', 'Pottery', 'Wood Carving', 'Video Games',
    'Board Games', 'Chess', 'Puzzles', 'Table Tennis', 'Billiards', 'Language Learning',
    'Creative Writing', 'Book Club', 'Playing an Instrument', 'Podcast Hosting', 'Dancing',
    'Computer Programming', 'Travel', 'Cosplaying', 'Survivalist Prepping']

    @skill = Skill.new
    @skills = Skill.where(user_id: current_user)
    @hobbies = Hobby.where(user_id: current_user)
    # @skills = Skill.where(user_id: current_user)
    # @hobbies = Hobby.where(user_id: current_user)
  end

  def deck
    @skills_cat = current_user.skills.pluck(:category)
    @skills_level = current_user.skills.pluck(:experience)

    # Skill.where(user_id: current_user)
    @hobbies_deck = Hobby.where("category IN (?) AND level IN (?)", @skills_cat, @skills_level)
  end

  def requests; end

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
