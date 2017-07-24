class Middleware1
  def initialize(app)
    @app = app
  end

  def call(env)
    puts 'Middleware1...'

    @app.call(env)
  end
end
