class Api::DisordersController < ApplicationController

  def index
    render json: Disorder.all
  end

  # def show
  #   render json: Disorder.find_by_id
end
