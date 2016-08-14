class UsersController < ApplicationController
  get '/?' do
    @users = User.where(id: 2).or(User.where(id: 3))
    puts @users.to_sql
    @users.to_json
  end

  get '/:id/?' do
    @user = User.find_by_id(params[:id])
    @user.to_json
  end
end
