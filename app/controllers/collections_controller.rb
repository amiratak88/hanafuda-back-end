class CollectionsController < ApplicationController

  def create
    @score = Collection.scoring(params[:results])
    render json: @score
  end

  




end
