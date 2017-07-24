require 'rack'

app = proc do |env|
  ['200', { 'Content-Type' => 'text/html' }, ['Hello, Rack!']]
end

Rack::Handler::WEBrick.run(app, Port: 8888, Host: '0.0.0.0')
