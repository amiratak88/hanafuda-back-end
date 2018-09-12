class CardsController < ApplicationController

  def deal
    @cards = Card.deal_cards
    render json: @cards
  end

  def match
    @result = Card.match_cards(params[:id1], params[:id2])
    render json: @result
  end
















#this ends CardsController
end
