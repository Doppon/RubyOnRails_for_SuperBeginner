class HeloController < ApplicationController

  def index
    if request.post?
      @title = '結果は|ω・`）ちら'
      if params[:r1]
        @msg = '選択したのは┃電柱┃゜艸゜)ジー... ' + params['r1']
      else
        @msg = '選択できてない(っω<。)ﾌｷﾌｷ'
      end

      if params['s1']
        @msg = '選択したのは┃電柱┃゜艸゜)ジー... ' + params['s1']
      else
        @msg = '選択できてない(っω<。)ﾌｷﾌｷ'
      end
    else
      @title = 'Index'
      @msg = '色々選択するのじゃ(´・ω・｀)ｗ ...'
    end
  end

end
