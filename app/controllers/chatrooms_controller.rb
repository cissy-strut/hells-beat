class ChatroomsController < ApplicationController
  def index
    @matchings_with_user_ref = current_user.matchings.where(user_one_status: "accept", user_two_status: "accept")
    @matchings_with_other_user = Matching.where(user_two_id: current_user.id, user_one_status: "accept", user_two_status: "accept")
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:id)
  end
end
