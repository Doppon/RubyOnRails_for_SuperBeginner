class CardsController < ApplicationController
  layout 'cards'

  def index
    @cards = Card.all
  end

  def show
    @card = Card.find(params[:id])
  end

  def add
    if request.post?
      Card.create(card_params)
      back_to_home
    else
      @card = Card.new
    end
  end

  def edit
    @card = Card.find(params[:id])
    if request.patch?
      @card.update(card_params)
      back_to_home
    end
  end

  def delete
    Card.find(params[:id]).destroy
    back_to_home
  end

  private

  def card_params
    params.require(:card).permit(:title, :author, :price, :publisher, :memo)
  end

  def back_to_home
    redirect_to '/cards'
  end

end
