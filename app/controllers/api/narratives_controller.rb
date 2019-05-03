class Api::NarrativesController < ApplicationController

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
    render json: Narrative.find_by(id: params[:id])
  end

  private

   def narrative_params
     params.require(:narrative).permit(:title, :tagline, :story, :user_id, :trauma_id)
   end
end
