require 'rack'

class Application
 
    def call(env)
      resp = Rack::Response.new
      t = Time.now 
      h = t.hour
      if h > 12
        resp.write "Good Afternoon!"
      else
        resp.write "Good Morning!"
      end
        
      resp.finish 
    end
end




