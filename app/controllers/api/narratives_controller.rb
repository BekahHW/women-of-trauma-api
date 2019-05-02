class Api::NarrativesController < ApplicationController

  def index
    render json: Narratives.all
  end
end
