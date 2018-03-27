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
      back_to_home
    end
  end

  def edit
    if request.patch?
      Card.update(card_params)
      back_to_home
    end
  end

  def delete
    Card.find(params[:id]).destroy
    back_to_home
  end

  private

  def card_params
    params.require(:card).permit(:title, :auther, :price, :publisher, :memo)
  end

  def back_to_home
    redirect_to '/cards'
  end

end
