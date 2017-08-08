require 'rack'

# 1. app 要響應 call 這個 method，也就是 app.respond_to?(:call) ==  true
# 2. app 必須回傳一個 Array 包含 status、header 跟 body
# 3. body 必須響應 each
# 4. 可以接受一個 Hash 的環境變數作為輸入參數

app = proc do |env|
  ['200', { 'Content-Type' => 'text/html' }, ['Hello, Rack!']]
end

Rack::Handler::WEBrick.run(app, Port: 8888, Host: '0.0.0.0')
