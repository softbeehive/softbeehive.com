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
        @exch = selectProject(params[:name])
        @page_title = "Projects - " + @exch[:name]
        @page_desc = @exch[:desc]
        slim :"projects/details"
      else
        show_404
      end
    end

    get "/about" do
      @page_title = "About - History, vision and approach"
      @page_desc = "Timeline, present and plans, philosophy and mission. Started in 2008, worked on more than 15 successful e-commerce, corporative and open-source projects."
      slim :about
    end

    get "/contact" do
      @page_title = "Contact - Telephone, CV"
      @page_desc = "Get in touch and start building awesome things together!"
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
