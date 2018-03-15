class HeloController < ApplicationController

  def index
    if params[:query_msg].nil?
      @title = "デフォのタイトル(´・ω・｀)"
    else
      @title = params[:query_msg]
    end
    @msg = "リダイレクトの処理を追加したぜいd(´・ω・｀)"
  end

  def other
    redirect_to action: :index, params: { query_msg: params[:query_msg] }
  end

end
