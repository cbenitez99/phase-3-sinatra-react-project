class ApplicationController < Sinatra::Base
  configure do
    set :default_content_type, 'application/json'
  end
  get "/" do
    "Go to http://localhost:9292/reviews"
  end
  
end
