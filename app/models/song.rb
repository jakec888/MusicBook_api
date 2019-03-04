
class Song
  attr_reader :song_name, :artist, :videoId, :contributor, :likes, :dislikes

  DB = PG.connect({:host => "localhost", :port => 5432, :dbname => 'MusicBook_api_development'})

  def initialize(opts = {}, id = nil)
    @song_name = opts["song_name"]
    @artist = opts["artist"]
    @videoId = opts["videoId"]
    @contributor = opts["contributor"]
    @likes = likes.to_i
    @dislikes = dislikes.to_i
    @id =id.to_i
  end

#prepared statements




###
def self.all
  results = DB.exec(
    <<-SQL
      SELECT *
      FROM songs;
    SQL
  )
  return results.map do |result|
    song = Song.new(result, result["id"])
  end
end

def self.find(id)
  results = DB.exec(
    <<-SQL
      SELECT *
      FROM songs
      WHERE id=#{id};
    SQL
  )
  return {
    "song_name" => results.first["song_name"],
    "artist" => results.first["artist"],
    "videoId" => results.first["videoId"],
    "contributor" => results.first["contributor"],
    "likes" => results.first["likes"].to_i,
    "dislikes" => results.first["dislikes"].to_i
  }
end

  def self.create(opts)
    results = DB.exec(
      <<-SQL
        INSERT INTO songs (song_name, artist, videoId, contributor, likes, dislikes)
        VALUES (
          '#{opts["song_name"]}',
          '#{opts["artist"]}',
          '#{opts["videoId"]}',
          '#{opts["contributor"]}',
          #{opts["likes"]},
          #{opts["dislikes"]})
          RETURNING song_name, artist, videoId, contributor, likes, dislikes, id;
      SQL
    )
    return {
      "song_name" => results.first["song_name"],
      "artist" => results.first["artist"],
      "videoId" => results.first["videoId"],
      "contributor" => results.first["contributor"],
      "likes" => results.first["likes"].to_i,
      "dislikes" => results.first["dislikes"].to_i
    }
  end

  def self.delete(id)
    results = DB.exec(
      <<-SQL
        DELETE FROM songs
        WHERE id = #{id};
      SQL
    )
    return {
      "successfully deleted" => true
    }
  end

  def self.update(id, opts)
    results = DB.exec(
      <<-SQL
        UPDATE songs
        SET song_name='#{opts["song_name"]}',
            artist='#{opts["artist"]}',
            videoId='#{opts["videoId"]}',
            contributor='#{opts["contributor"]}',
            likes=#{opts["likes"]},
            dislikes=#{opts["dislikes"]}
            WHERE id=#{id}
          RETURNING song_name, artist, videoId, contributor, likes, dislikes, id;
      SQL
    )
    return {
      "song_name" => results.first["song_name"],
      "artist" => results.first["artist"],
      "videoId" => results.first["videoId"],
      "contributor" => results.first["contributor"],
      "likes" => results.first["likes"].to_i,
      "dislikes" => results.first["dislikes"].to_i
    }
  end

end























#
