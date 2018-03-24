class PeopleController < ApplicationController

  def index
    @msg = '(ΦωΦ)フフフ…indexアクションだぜd(´・ω・｀)'
    @data = Person.all
  end

  def show
    @msg = '(ΦωΦ)フフフ…showアクションだぜd(´・ω・｀)'
    @data = Person.find(params[:id])
  end

  def add
    @msg = '(ΦωΦ)フフフ…addアクションだぜd(´・ω・｀)'
  end

  protect_form_forgery

  def create
    if request.post? then
      obj = Person.create(
        name: params['name'],
        age: params['age' ],
        mail: params['mail']
      )
    end
    redirect_to '/people'
  end

end
