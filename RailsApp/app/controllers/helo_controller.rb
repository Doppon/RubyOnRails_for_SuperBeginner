class HeloController < ApplicationController

  def index
    if params['msg'].nil?
      @title = "デフォのタイトル(´・ω・｀)"
    else
      @title = params['msg']      
    end
    @msg = "リダイレクトの処理を追加したぜいd(´・ω・｀)"
  end

  def other
    redirect_to action: :index, params: {'msg': '待ってこのリダイレクトの書き方初めて'}
  end

end
