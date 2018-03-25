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
    if request.post? then
      Person.create(person_params)
      redirect_to '/people'
    end
  end

  def edit
    @msg = '(ΦωΦ)フフフ…editアクションだぜd(´・ω・｀)'
    @person = Person.find(params[:id])
  end

  private

  def person_params
    params.require(:person).permit(:name, :age, :mail)
  end

end
