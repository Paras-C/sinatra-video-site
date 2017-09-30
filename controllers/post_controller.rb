class PostsController < Sinatra::Base

  configure :development do 
    register Sinatra::Reloader
  end

  set :root, File.join(File.dirname(__FILE__), "..")
  set :view, Proc.new { File.join(root, "views") }


  #INDEX
  get "/videos" do
    @videos = Video.all
    erb :"posts/index"
  end

  #NEW
  get "/videos/new" do
    erb :"posts/new"
  end

  #SHOW
  get "/videos/:id" do

  end

  #CREATE
  post "/videos" do

  end

  #EDIT
  get "/videos/:id/edit" do

  end

  #UPDATE
  put "/videos/:id" do

  end

  #DELETE
  delete "/videos/:id" do

  end



end
