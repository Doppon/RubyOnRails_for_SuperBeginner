class HeloController < ApplicationController

  def index
    if params['msg'] != nil then
      msg = 'hello, ' + params['msg'] + '!'
    else
      msg = 'this os sample page.'
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
