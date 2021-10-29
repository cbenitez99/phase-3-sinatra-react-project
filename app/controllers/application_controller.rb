class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/" do
    "Go to http://localhost:9292/games"
  end
  
end
