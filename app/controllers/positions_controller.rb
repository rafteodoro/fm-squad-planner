class PositionsController < ApplicationController
  def new
    @position = Position.new
    @tactic = Tactic.find(params[:tactic_id])
  end

  def create
    @position = Position.new(position_params)
    if @position.save
      redirect_to tactic_path
    else
      render :new, status: :unprocessable_entity
    end
  end
end
