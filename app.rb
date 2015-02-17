require "sinatra/base"
require "sinatra/reloader"
require "slim"
require "slim/include"

module Softbeehive
  class App < Sinatra::Base
    
    configure :development do
      register Sinatra::Reloader
    end

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

    get "/contact" do 
      slim :contact
    end

  end
end
