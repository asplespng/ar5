require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/reloader' if development?

class User < ActiveRecord::Base
end

class App < Sinatra::Base
  before do
    content_type :json
  end

  get '/' do
    p 'Hello!'
  end

  get '/users/?' do
    @users = User.where(id: 1).or(User.where(id: 3))
    puts @users.to_sql
    @users.to_json
  end

  get '/users/:id/?' do
    @user = User.find_by_id(params[:id])
    @user.to_json
  end
end
