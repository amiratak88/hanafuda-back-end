class CardsController < ApplicationController

  def deal
    @cards = Card.deal_cards
    render json: @cards
  end
















#this ends CardsController
end
