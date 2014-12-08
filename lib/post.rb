require 'dm-timestamps'
require 'dm-validations'

class Post

  include DataMapper::Resource

  property :id,     Serial
  property :name, String, :required => true, :length => 3..20
  property :body,  String, :required => true, :length => 5..500 
  property :created_at, DateTime

end