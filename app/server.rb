require 'sinatra'
require 'data_mapper'

require './lib/post'

require_relative 'data_mapper_setup.rb'

set :partial_template_engine, :erb
set :public_folder, Proc.new { File.join(root, '.', 'public') }


get '/' do
  @posts = Post.all
  erb :index
end

post '/posts' do
  body = params["body"]
  name = params["name"]
  Post.create(:body => body, :name => name)
  redirect to '/'
end