# frozen_string_literal: true

# PlayersController is responsible for handling requests for the Player model.
class PlayersController < ApplicationController
  def index
    @players = Player.all
  end

  def import
    return redirect_to request.referer, notice: 'No file added' if params[:file].nil?
    return redirect_to request.referer, notice: 'Only CSV files allowed' unless params[:file].content_type == 'text/csv'

    CsvImportService.new.call(params[:file])

    redirect_to request.referer, notice: 'Import started...'
  end
end
