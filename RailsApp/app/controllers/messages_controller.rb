class MessagesController < ApplicationController
  def index
    @msg = 'Message data.'
    @data = Message.all
  end

  def show
  end

  def add
  end

  def edit
  end
end
