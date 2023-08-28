class TacticsController < ApplicationController
  def index
    @tactics = Tactic.all
  end

  def new
    @tactic = Tactic.new
  end

  def create
    @tactic = Tactic.new(tactic_params)
    if @tactic.save
      redirect_to tactics_path
    else
      render :new
    end
  end

  def show
    @tactic = Tactic.find(params[:id])
  end

  private

  def tactic_params
    params.require(:tactic).permit(:name)
  end
end
