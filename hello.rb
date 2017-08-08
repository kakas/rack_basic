class Hello
  def self.call(env)
    ['200', { 'Content-Type' => 'text/html' }, ['<h1>rackup!</div>']]
  end
end
