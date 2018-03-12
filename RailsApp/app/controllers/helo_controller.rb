class HeloController < ApplicationController

  def index
    if params['msg'].nil? then
      msg = 'this os sample page.'
    else
      msg = 'hello, ' + params['msg'] + '!'
    end
    msg = '
    <html>
    <body>
      <h2>Sample Page</h2>
      <p>' + msg + '</p>
    </body>
    </html>
    '
    render html: msg.html_safe
  end

end
