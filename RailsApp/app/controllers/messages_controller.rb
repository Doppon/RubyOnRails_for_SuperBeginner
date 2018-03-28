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
    @message = Message.new(message_params)
    if @message.save
      redirect_to 'messages/'
    else
      render 'add'
    end
  end

  def edit
    @msg = "edit data.[id = " + params[:id] + "]"
    @message = Message.find(params[:id])
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
