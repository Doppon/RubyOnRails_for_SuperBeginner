class HeloController < ApplicationController

  def index
    if params['msg'] != nil then
      @title = params['msg']
    else
      @title = "デフォのタイトル(´・ω・｀)"
    end
    @msg = "リダイレクトの処理を追加したぜいd(´・ω・｀)"
  end

  def other
    redirect_to action: :index, params: {'msg': '待ってこのリダイレクトの書き方初めて'}
  end

end
