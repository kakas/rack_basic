require 'rack'
require './timing.rb'

app = proc do |env|
  ['200', { 'Content-Type' => 'text/html' }, ['<h1>Hello, Rack!</div>']]
end

Rack::Handler::WEBrick.run(Timing.new(app), Port: 8888, Host: '0.0.0.0')
