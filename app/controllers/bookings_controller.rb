class BookingsController < ApplicationController
  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    if @booking.save!
      redirect_to @booking, notice: 'Yay! 🎉 You made your request.'
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:time_slot, :hobby_id)
  end


end
