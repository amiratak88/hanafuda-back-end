class GamePlayersController < ApplicationController
  def create
      @game_player = GamePlayer.create(game_params)
      render json: @game_player
  end

  private

  def game_params
      params.require(:game_player).permit(:game_id, :player_id)
  end

end
