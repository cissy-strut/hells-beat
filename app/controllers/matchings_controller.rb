class MatchingsController < ApplicationController
  def index
    @matchings = current_user.matchings
  end

  def refuse
  end

  def accept
  end

  def show
  end
end
