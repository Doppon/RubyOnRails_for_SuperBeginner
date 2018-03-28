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

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def message_params
    params.require(:message).permit(:person_id, :title, :message)
  end

end
