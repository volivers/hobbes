class HobbiesController < ApplicationController
  before_action :set_hobby, only: [:show]
  before_action :find_user, only: [:create]

  def index
    if params[:query].present?
      @hobbies = Hobby.search_by_title_description_and_category(params[:query])
    else
      @hobbies = Hobby.all
    end
  end

  def show
    @user = current_user
  end

  def new
    $categories = ['Hiking', 'Backpacking', 'Camping', 'Hunting', 'Fishing', 'Archery','Canoeing',
    'Kayaking', 'Running', 'Geocaching', 'Bird Watching', 'Beekeeping', 'LARPing',
    'Parkour', 'Astronomy', 'Kite Flying', 'Bread Making', 'Origami', 'Photography',
    'Crocheting', 'Knitting', 'Embroidery', 'Pottery', 'Wood Carving', 'Video Games',
    'Board Games', 'Chess', 'Puzzles', 'Table Tennis', 'Billiards', 'Language Learning',
    'Creative Writing', 'Book Club', 'Playing an Instrument', 'Podcast Hosting', 'Dancing',
    'Computer Programming', 'Travel', 'Cosplaying', 'Survivalist Prepping']
    $levels = [['Rookie', '1'], ['Good', '2'], ['Master', '3']]
    $recurrence = ['Daily', 'Weekly', 'Monthly']
    $weekdays = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat']

    @hobby = Hobby.new
  end

  def create
    @hobby = Hobby.new(hobby_params)
    @hobby.user = current_user

    if @hobby.save
      redirect_to profile_users_path, notice: 'Yay! 🎉 Your hobby was successfully added. Check it out 👇'
    else
      render :new
    end
  end

  def destroy
    @hobby = Hobby.find(params[:id])
    @hobby.destroy
    redirect_to profile_users_path, notice: 'Yay! 🎉 Your hobby was successfully removed.'
  end

  
  private

  def find_user
    @user = current_user
  end
  def set_hobby
    @hobby = Hobby.find(params[:id])
  end
  
  def find_user
    @user = current_user
  end

  def hobby_params
    params.require(:hobby).permit(:title, :description, :level, :occupancy_limit, :category, :location, :weekday, :recurrence, :current_user)
  end
end
