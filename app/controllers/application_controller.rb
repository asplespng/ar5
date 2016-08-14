require 'sinatra/base'
require 'sinatra/reloader' if Sinatra::Base.development?
require 'sinatra/activerecord'
require 'pry'

class ApplicationController < Sinatra::Base
  set :views, File.expand_path('../../views', __FILE__)
  before do
  end

  configure :development do
    register Sinatra::Reloader
  end
end
