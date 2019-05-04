class Api::NarrativesController < ApplicationController
  before_action :set_narrative[:update, :show, :destroy] 

  def index
    render json: Narrative.all
  end

  def create
    narrative = Narrative.new(narrative_params)
    if narrative.save
      render json: narrative
    else
      render json: {message: narrative.errors}, status: 400
    end
  end

  def show
    render json: @narrative
  end

  def update
    if @narrative.update(narrative_params)
      render json: @narrative
    else
      render json: {message: narrative.errors}, status: 400
    end
  end

  def destroy
    if @narrative.destroy(narrative_params)
      render status: 204
    else
      render json: {message: "Cannot delete story at this time."}, status: 400
    end
  end

  private

  def set_narrative
    @narrative = Narrative.find_by(id: params[:id])
  end

   def narrative_params
     params.require(:narrative).permit(:title, :tagline, :story, :user_id, :trauma_id)
   end
end
