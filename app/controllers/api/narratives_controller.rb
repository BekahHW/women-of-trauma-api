class Api::Narratives < ApplicationController

  def index
    render json: narratives.all
  end
end
