# require './app'
require 'sinatra/base'
Dir.glob('./app/{helpers,controllers,models}/*.rb').each { |file| require file }

map('/users') { run UsersController }
map('/') { run PagesController }
