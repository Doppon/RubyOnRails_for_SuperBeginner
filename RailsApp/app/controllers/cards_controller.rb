class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def show
    @card = Card.find(params[:id])
  end

  def add
    if request.post?
      Card.create(card_params)
      redirect_to '/cards'
    end
  end

  def edit
    if request.patch?
      Card.update(card_params)
      redirect_to '/cards'      
    end
  end

  def delete
  end

  private

  def card_params
    params.require(:card).permit(:title, :auther, :price, :publisher, :memo)
  end

end
