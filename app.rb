require "sinatra/base"
require "sinatra/reloader"
require "slim"
require "slim/include"

module Softbeehive
  class App < Sinatra::Base
    
    configure :development do
      register Sinatra::Reloader
      also_reload "src/data.rb"

      set :slim, :layout => :"layouts/default"
      set :bind, "0.0.0.0"
    end

    before { request.path_info.sub! %r{/$}, '' }

    get "/" do
      slim :projects
    end

    get "/projects" do
      slim :projects
    end

    get "/projects/:name" do
      if selectProject(params[:name])
        slim :"projects/details"
      else
        slim :'404'
      end
    end

    get "/about" do
      slim :about
    end

    get "/contact" do
      slim :contact
    end

    helpers do
      def show_404
        status 404
        slim :'404'
      end
    end

    not_found do
      show_404
    end

    def selectProject(key)
      @kev = data_array.detect {|k, v| k[:"#{key}"]} || false
      if @kev
        return @kev[:"#{key}"]
      end
    end

    require_relative "src/data"
    helpers ProjectData

  end
end
