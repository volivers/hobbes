class UsersController < ApplicationController
  before_action :find_user, only: %i[show dashboard hobbies deck requests skillset]
  def show; end

  def edit
  end

  def update
  end

  def dashboard; end

  def hobbies; end

  def deck; end

  def requests; end

  def skillset; end

  # def chef
  #   @chef_name = @restaurant.chef_name
  # end

  private

  def find_user
    @user = current_user
    # @restaurant = Restaurant.find(params[:id])
  end
end
