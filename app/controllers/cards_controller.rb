class CardsController < ApplicationController

  def deal
    @cards = Card.deal_cards
    render json: @cards
  end

  def match(id1, id2)
    @result = Card.match_cards(id1, id2)
    render json: @result
  end
















#this ends CardsController
end
