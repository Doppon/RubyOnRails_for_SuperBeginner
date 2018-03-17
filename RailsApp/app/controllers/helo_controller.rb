class HeloController < ApplicationController

  layout 'helo'

  def index
    @header = 'レイアウトサンプル(´・ω・｀)レイアウトサンプル'
    @footer = 'DOPO(´・ω・｀)DOPO'
    @title = '新しいレイアウト(=ﾟωﾟ)ﾉ'
    @msg = 'this is sample page!(唐突ｗ)'
  end

end
