class PeopleController < ApplicationController
  layout 'people'

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
    if request.post?
      Person.create(person_params)
      redirect_to '/people'
    end
  end

  def edit
    @msg = '(ΦωΦ)フフフ…[id:' + params[:id] + ']を編集なうだぜd(´・ω・｀)'
    @person = Person.find(params[:id])
  end

  def update
    obj = Person.find(params[:id])
    if request.patch?
      obj.update(person_params)
      redirect_to '/people'
    end
  end

  def delete
    obj = Person.find(params[:id])
    obj.destroy
    redirect_to '/people'
  end

  def find
    @msg = 'please type search word ...'
    @people = []
    if request.post?
      obj = Person.find(params[:find])
      @people.push(obj)
    end
  end

  private

  def person_params
    params.require(:person).permit(:name, :age, :mail)
  end

end
