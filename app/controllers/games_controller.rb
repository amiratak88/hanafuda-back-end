class GamesController < ApplicationController
    def create
        @game = Game.create(game_params)
        render json: @game
    end

    private
    
    def game_params
        params.require(:game).permit(:current)
    end
end
