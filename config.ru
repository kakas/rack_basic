require './hello.rb'
require './timing.rb'
require './middleware1.rb'
require './middleware2.rb'

map '/' do
  use Timing
  use Middleware1
  run Hello
end

map '/admin' do
  use Timing
  use Middleware2
  run Hello
end
