require('pg')
require_relative('artist.rb')
require_relative('../db/sql_runner.rb')

class Album

  attr_reader :id, :artist_id, :title, :genre


  def initialize(options)
    @id = options["id"].to_i if options["id"]
    @title = options["title"]
    @genre = options["genre"]
    @artist_id = options["artist_id"].to_i
  end

  def save()
    sql = "INSERT INTO albums ( artist_id, title, genre )
    VALUES ( $1, $2, $3 )
    RETURNING * "
    values = [ @artist_id, @title, @genre,]
    @id = SqlRunner.run(sql, values)[0]['id'].to_i()
  end
end
