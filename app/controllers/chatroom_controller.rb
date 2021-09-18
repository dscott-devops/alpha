class ChatroomController < ApplicationController
  before_action :set_messages

  def index
  end

  def chat
  end

  def chat1
  end

  def chat2
  end

  def page
  end

  private

  def set_messages
    @messages = Message.all
  end


end
