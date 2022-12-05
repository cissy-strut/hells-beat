class ChatroomsController < ApplicationController
  def index
    @matchings = Matching.all
    # @chatrooms = (current_user.chatrooms.where(user_one_status: "accept") +
    #              Chatroom.where(user_two_id: current_user.id).where(@matching.user_two_status: "accept")) &&
    #              (current_user.chatrooms.where(user_one_status: "accept") +
    #              Chatroom.where(user_two_status: "accept"))
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
