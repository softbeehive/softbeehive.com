require "sinatra"
require "slim"
require "slim/include"

configure do
  set :slim, :layout => :"layouts/default"
  set :bind, "0.0.0.0"
end

get "/" do
  slim :index
end

get "/works" do 
  slim :works
end

get "/about" do 
  slim :about
end