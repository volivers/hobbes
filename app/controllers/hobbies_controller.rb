class HobbiesController < ApplicationController
  before_action :set_hobby, only: [:show ]

  def index
    @hobbies = Hobby.all
  end

  def show
    @user = current_user
  end

  # def filter
  # end

  def new
    @hobby = Hobby.new
  end

  def create
    @hobby = Hobby.new(hobby_params)

    if @hobby.save
      redirect_to @hobby, notice: 'Yay! 🎉 Your hobby was successfully added.'
    else
      render :new
    end
  end

  private

  def set_hobby
    @hobby = Hobby.find(params[:id])
  end

  def hobby_params
    params.require(:hobby).permit(:title, :description, :level, :occupancy_limit, :user_id)
  end
end
