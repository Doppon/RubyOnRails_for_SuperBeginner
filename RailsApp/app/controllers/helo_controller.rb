class HeloController < ApplicationController

  def index
    msg = '
    <html>
    <body>
      <h2>Sample Page</h2>
      <p>こんな使い方があるのが(´・ω・｀)ｗ</p>
    </body>
    </html>
    '
    render html: msg.html_safe
  end

end
