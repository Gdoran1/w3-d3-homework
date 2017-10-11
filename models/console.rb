require('pry')
require_relative('./artist.rb')
require_relative('./albums.rb')


# Album.delete_all()
# Artist.delete_all()

artist_1 = Artist.new({
          'artist_name' => 'David Bowie',
          })

album_1 = Album.new({
                      "title" => "Diamond Dogs",
                      "genre" => "Rock",
                      "artist_id" => artist_1.id
                    })
album_2 = Album.new({
                      "title" => "Blackstar",
                      "genre" => "Rock",
                      "artist_id" => artist_1.id
                    })
album_3 = Album.new({
                      "title" => "Black Tie White Noise",
                      "genre" => "Rock",
                      "artist_id" => artist_1.id
                    })
album_4 = Album.new({
                      "title" => "Sound + Vision",
                      "genre" => "Rock",
                      "artist_id" => artist_1.id
                    })
album_5 = Album.new({
                      "title" => "Aladdin Sane",
                      "genre" => "Rock",
                      "artist_id" => artist_1.id
                    })

artist_2 = Artist.new({
          'artist_name' => 'Blondie'
          })

album_6 = Album.new({
                      "title" => "Parallel Lines",
                      "genre" => "Pop",
                      "artist_id" => artist_2.id
                    })
album_7 = Album.new({
                      "title" => "Eat to the Beat",
                      "genre" => "Rock",
                      "artist_id" => artist_2.id
                    })
album_8 = Album.new({
                      "title" => "Blondie",
                      "genre" => "Rock",
                      "artist_id" => artist_2.id
                    })

artist_3 = Artist.new({
          'artist_name' => 'INXS',
          })

album_9 = Album.new({
                      "title" => "Shabooh Shabaah",
                      "genre" => "Rock",
                      "artist_id" => artist_3.id
                    })
album_10 = Album.new({
                      "title" => "Listen Like Thieves",
                      "genre" => "Rock",
                      "artist_id" => artist_3.id
                    })
album_11 = Album.new({
                      "title" => "Kick",
                      "genre" => "Rock",
                      "artist_id" => artist_3.id
                    })

artist_4 = Artist.new({
          'artist_name' => 'Beastie Boys',
          })

album_12 = Album.new({
                      "title" => "Licence to Ill",
                      "genre" => "Rock",
                      "artist_id" => artist_4.id
                    })
binding.pry
nil
