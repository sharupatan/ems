class PositionsController < ApplicationController
  layout 'admin'
  def index
    @positions = Position.all
  end

  def create
    @position = Position.new(params.require(:position).permit!)
    if @position.save
      redirect_to positions_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new
    @position = Position.new
  end

  def edit
    @position = Position.find(params.require(:id))
  end

  def update
    @position = Position.find(params.require(:id))
    @position.update(params.require(:position).permit!)
    redirect_to positions_path
  end

  def destroy
    Position.find(params.require(:id)).destroy
    redirect_to positions_path
  end
end
