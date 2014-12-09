require 'sinatra'
require 'data_mapper'
require_relative 'controllers/posts'
require_relative 'controllers/application'
require_relative 'data_mapper_setup'
require './app/models/post'


set :partial_template_engine, :erb
set :public_folder, Proc.new { File.join(root, '..', 'public') }
