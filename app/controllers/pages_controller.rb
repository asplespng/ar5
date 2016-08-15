class PagesController < ApplicationController
  get '/' do
    haml :index
  end
end
