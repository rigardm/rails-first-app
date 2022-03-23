class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
  end

  def new
    @hotel = Hotel.find(params[:hotel_id])
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    @hotel = Hotel.find(params[:hotel_id])
    @room.hotel = @hotel
    if @room.save
      redirect_to hotel_path(@hotel)
    else
      render 'new'
    end
  end

  private

  def room_params
    params.require(:room).permit(:capacity, :number, :daily_price)
  end
end
