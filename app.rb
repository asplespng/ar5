require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require 'pry'

class User < ActiveRecord::Base
end

class App < Sinatra::Base
  before do
    content_type :json
  end

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    p 'Hello!'
  end

  get '/users/?' do
    @users = User.where(id: 2).or(User.where(id: 3))
    puts @users.to_sql
    @users.to_json
  end

  get '/users/:id/?' do
    @user = User.find_by_id(params[:id])
    @user.to_json
  end
end
