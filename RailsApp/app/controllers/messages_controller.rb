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
  end

  def edit
  end
end
