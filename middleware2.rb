class Middleware2
  def initialize(app)
    @app = app
  end

  def call(env)
    puts 'Middleware2...'

    @app.call(env)
  end
end
