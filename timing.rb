class Timing
  def initialize(app, opts = {}, &b)
    @app = app
    @pid = opts[:pid]
    @b = b
    yield if block_given?
  end

  def call(env)
    @b.call
    ts = Time.now
    sleep 1
    status, headers, body = @app.call(env)
    elapsed_time = Time.now - ts

    puts "Timing: #{env['REQUEST_METHOD']} #{env['REQUEST_URI']} ---> #{elapsed_time.round(3)}"

    [status, headers, body]
  end
end
