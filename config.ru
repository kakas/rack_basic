require './hello.rb'
require './timing.rb'

use Timing, pid: true do
  puts 'Heeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee'
end

run Hello
