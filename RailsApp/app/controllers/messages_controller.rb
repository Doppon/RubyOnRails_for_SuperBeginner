class MessagesController < ApplicationController
  def index
    @msg = 'Message data.'
    @data = Message.all
  end

  def show
    @msg = "Indexed data."
    @data = Message.find(params[:id])
  end

  def add
    @msg = "Message data."
    @message = Message.new
  end

  def edit
  end
end