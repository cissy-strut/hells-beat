class MatchingsController < ApplicationController
  def index
    @matchings = current_user.matchings.where(user_one_status: "pending") + Matching.where(user_two_id: current_user.id).where(user_two_status: "pending")
  end

  def accept
    @matching = Matching.find(params[:id])
    @matching.update(user_one_status: 'accept')
    redirect_to matchings_path
  end

  def refuse
    @matching = Matching.find(params[:id])
    @matching.update(user_one_status: 'refuse')
    redirect_to matchings_path
  end

  def show
    @matching = Matching.find(params[:id])
  end

  private

  def matching_params
    params.require(:matching).permit(:id)
  end
end
