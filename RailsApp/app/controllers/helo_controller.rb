class HeloController < ApplicationController

  def index
    if request.post?
      @title = '結果は|ω・`）ちら'
      if params['s1']
        @msg = '選択したのは┃電柱┃゜艸゜)ジー... '
        for val in params['s1']
          @msg += val + ' '
        end
      else
        @msg = '選択できてない(っω<。)ﾌｷﾌｷ'
      end
    else
      @title = 'Index'
      @msg = '色々選択するのじゃ(´・ω・｀)ｗ ...'
    end
  end

end
