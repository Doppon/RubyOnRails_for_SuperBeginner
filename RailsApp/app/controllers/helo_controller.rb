class HeloController < ApplicationController

  def index
    if request.post?
      @title = 'Result'
      if params['check1']
        @msg = 'チェック済み(`･ ω･´)ゞﾋﾞｼｯ!!'
      else
        @msg = 'チェックできてない(っω<。)ﾌｷﾌｷ'
      end
    else
      @title = 'Index'
      @msg = 'Check it ...'
    end
  end

end
