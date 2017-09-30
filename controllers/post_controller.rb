class PostsController < Sinatra::Base

  configure :development do 
    register Sinatra::Reloader
  end

  set :root, File.join(File.dirname(__FILE__), "..")
  set :view, Proc.new { File.join(root, "views") }


  #INDEX
  get "/videos" do

  end

  #NEW
  get "/videos/new" do

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
