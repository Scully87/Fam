env = ENV["RACK_ENV"] || "development"

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/onnie_#{env}")

require_relative 'models/post'

DataMapper.auto_upgrade!
DataMapper.finalize