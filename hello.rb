require 'rack'
require './timing.rb'

app = proc do |env|
  ['200', { 'Content-Type' => 'text/html' }, ['<h1>Hello, Rack!</h1>']]
end

# 多個 middleware 要如何使用？
Rack::Handler::WEBrick.run(Timing.new(app), Port: 8888, Host: '0.0.0.0')
