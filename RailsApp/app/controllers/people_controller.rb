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
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      redirect_to '/people'
    else
      re = ''
      @person.errors.messages.each do |key, vals|
        vals.each do |val|
          re += '<span style="color:red">' + key.to_s + '</span>'+ ' ' + + val + '<br>'
        end
      end
      @msg = re.html_safe
      render 'add'
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
      f = params[:find].split(',')
        @people = Person.all.limit(f[0]).offset(f[1])
    end
  end

  private

  def person_params
    params.require(:person).permit(:name, :age, :mail)
  end

end
