class ChatroomsController < ApplicationController
  before_action :set_current_user_chatrooms, only: [:index, :show]

  def index
  end

  def create
    @offer = Offer.find(params[:offer_id])
    @chatroom = Chatroom.find_by(migrant_id: current_user.id, contributor_id: @offer.user.id)

    @chatroom = Chatroom.new unless @chatroom
    @chatroom.migrant = current_user
    @chatroom.contributor = @offer.user
    @chatroom.save
    redirect_to chatroom_path(@chatroom)
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  private

  def set_current_user_chatrooms
    if current_user.contributor
      @chatrooms = current_user.chatrooms_as_contributor
    else
      @chatrooms = current_user.chatrooms_as_migrant
    end
  end
end
