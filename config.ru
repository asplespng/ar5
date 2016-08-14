# require './app'
require 'sinatra/base'
Dir.glob('./app/{controllers,models,helpers}/*.rb').each { |file| require file }

map('/users') { run UsersController }
map('/') { run PagesController }
