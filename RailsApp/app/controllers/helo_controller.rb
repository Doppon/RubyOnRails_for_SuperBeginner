class HeloController < ApplicationController

  def index
    msg = ''
    if params['name'].nil?
      msg = 'this os sample page.'
    else
      msg = 'hello, ' + params['name'] + '!'
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
