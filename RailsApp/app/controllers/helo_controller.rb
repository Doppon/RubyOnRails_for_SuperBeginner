class HeloController < ApplicationController

  def index
    if request.post?
      @title = 'Result'
      @msg = 'you typed: ' + params['input1'] + '.'
    else
      @title = 'デフォのタイトル(´・ω・｀)'
      @msg = 'type text ...'
    end
  end

end
