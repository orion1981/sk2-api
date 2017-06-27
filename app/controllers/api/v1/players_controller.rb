class Api::V1::PlayersController < ApplicationController

  def index
    @players = Player.all
    render json: @players
  end

  def create
    @player = Player.create(player_params)
    render json: @player
  end


  private

  def player_params
    params.require(:player).permit(:name, :position, :player_number, :team_id)
  end

end
