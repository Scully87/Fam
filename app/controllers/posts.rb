post '/posts' do
  body = params["body"]
  name = params["name"]
  Post.create(:body => body, :name => name)
  redirect to '/'
end