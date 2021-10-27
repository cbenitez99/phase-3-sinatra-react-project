class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    "Backend Here"
  end

  get "/test" do
    "Testing!"
  end

end
