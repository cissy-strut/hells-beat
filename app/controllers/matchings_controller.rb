class MatchingsController < ApplicationController
  def index
  end

  def refuse
  end

  def accept
  end

  def show
    @matching = Matching.find(params[:id])
  end
end
