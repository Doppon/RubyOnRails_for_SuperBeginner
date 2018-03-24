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
    @person = Person.new
  end

  def create
    if request.post? then
      Person.create(person_params)
    end
    redirect_to '/people'
  end

  private

  def person_params
    params.require(:person).permit(:name, :age, :mail)
  end

end
