require "sinatra/base"
require "sinatra/reloader"
require "slim"
require "slim/include"

module Softbeehive
  class App < Sinatra::Base
    
    configure :development do
      register Sinatra::Reloader

      set :slim, :layout => :"layouts/default"
      set :bind, "0.0.0.0"
    end

    before { request.path_info.sub! %r{/$}, '' }

    get "/" do
      slim :index
    end

    get "/:section" do 
      slim :"#{params[:section]}"
    end

    get "/:section/:name" do
      slim :"#{params[:section]}/#{params[:name]}"
    end

  end
end
