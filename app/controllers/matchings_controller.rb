class MatchingsController < ApplicationController
  def index
    @matchings = Matching.all
  end

  def status(matching)
    
  end

  def show
    @matching = Matching.find(params[:id])
  end

  private

  def matching_params
    params.require(:matching).permit(:id)
  end
end
