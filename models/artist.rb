require('pg')
require_relative('../db/sql_runner.rb')




class Artist

  attr_reader :id, :name

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO artists (name)
    VALUES ( $1 )
    RETURNING * "
    values = [@name]
    results = SqlRunner.run(sql, values)
    @id = results[0]['id'].to_i()
  end

  # def self.all()
  #   sql = "SELECT * FROM artists"
  #   values = []
  #   artists = SqlRunner.run(sql, values)
  #   artists_as_objects = artits.map {|artist| Artist.new(artist)}
  # end
end
