class Api::V1::RoomsController < ApplicationController
  before_action :set_room, only: [:show, :update, :destroy]

  def index
    @rooms = Room.all

    render json: @rooms
  end

  def show
    render json: @room
  end

  def create
    @room = Room.new(room_params)

    if @room.save
      render json: 
    else
      render json: {status: 500, message: "Unable to create room."}
    end
  end

  def update
    if @room.update(room_params)
      render json: @room
    else
      render json: {status: 500, message: "Unable to update room."}
    end
  end

  def destroy
    @room.destroy
  end

  private

    def set_room
      @room = Room.find(params[:id])
    end

    def room_params
      params.require(:room).permit(:title)
    end
end
