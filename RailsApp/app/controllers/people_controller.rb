class PeopleController < ApplicationController

  def index
    @msg = '(ΦωΦ)フフフ…indexアクションだぜd(´・ω・｀)'    
    @data = Person.all
  end

  def show
    @msg = '(ΦωΦ)フフフ…showアクションだぜd(´・ω・｀)'
    @data = Person.find(params[:id])
  end

end
