class ChatController < ApplicationController
  def index
    @message = Message.new
  end
end
