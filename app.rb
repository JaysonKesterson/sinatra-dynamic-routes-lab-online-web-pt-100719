require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    params[:name].reverse
  end
  
   get "/square/:number" do
    params[:name].reverse
  end
  
   get "/say/:number/:phrase" do
    params[:name].reverse
  end
  
   get "/reversename/:name" do
    params[:name].reverse
  end

end