class CollectionsController < ApplicationController

  def score
    @score = Collection.scoring
    render json: @score
  end




end
