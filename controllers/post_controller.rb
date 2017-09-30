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
    id = params[:id].to_i
    @videos = Video.find(id)
    erb :"posts/show"
  end

  #CREATE
  post "/videos" do
    new_video = Video.new
    new_video.title = params[:title]
    new_video.description = params[:description]
    new_video.url = params[:url]
    new_video.save
    redirect "/videos"
  end

  #EDIT
  get "/videos/:id/edit" do
    @id = params[:id].to_i
    @videos = Video.find(@id)
    erb :"posts/edit"
  end

  #UPDATE
  put "/videos/:id" do

  end

  #DELETE
  delete "/videos/:id" do

  end



end
