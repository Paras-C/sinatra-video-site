class Video

  attr_accessor :id, :title, :description, :url

  def self.open_connection
    PGconn.connect( dbname: "video_list")
  end

  #Index
  def self.all
    conn = self.open_connection
    sql = "SELECT * FROM video;"

    results = conn.exec(sql)

    videos = results.map do |record|
      self.hydrate(record)
    end

    videos

  end

  #Show
  def self.find id
    conn = self.open_connection
    sql = "SELECT * FROM video WHERE id = #{id}"
    videos = conn.exec(sql)

    video = self.hydrate videos[0]#Returned value is always an array so you return the one at the first index

    video
  end

  #Create / #Update
  def save
    conn = Video.open_connection

    if(!self.id)
      sql = "INSERT INTO video (title, description, url) VALUES ('#{self.title}', '#{self.description}', '#{self.url}')"
    else
      sql = "UPDATE video SET title = '#{self.title}', description = '#{self.description}', url = '#{self.url}' WHERE id = #{self.id}"
    end

    conn.exec(sql)
  end


  #Delete
  def self.destroy id
    conn = self.open_connection
    sql = "DELETE FROM video WHERE id = #{id}"
    conn.exec(sql)
  end


  #Hydrate
  def self.hydrate video_data
    video = Video.new

    video.id = video_data['id']
    video.title = video_data['title']
    video.body = video_data['body']

    video

  end


end
