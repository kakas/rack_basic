class Timing
  def initialize(app)
    @app = app
  end

  # app 的 response 要回傳 status, headers, body, middleware 也是同理
  def call(env)
    ts = Time.now
    sleep 1
    status, headers, body = @app.call(env)
    elapsed_time = Time.now - ts

    puts "Timing: #{env['REQUEST_METHOD']} #{env['REQUEST_URI']} ---> #{elapsed_time.round(3)}"

    [status, headers, body]
  end
end
