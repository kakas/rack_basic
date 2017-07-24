require './hello.rb'
require './timing.rb'
require './middleware1.rb'
require './middleware2.rb'

use Timing
use Middleware1
use Middleware2
run Hello
