require './hello.rb'

use Rack::Auth::Basic, 'my auth' do |username, password|
  password == 'test'
end

run Hello
