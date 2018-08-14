Find the albums recorded by the artist Queen.
Album.where(artist_id: Artist.where(name: "Queen"))

Count how many tracks belong to the media type "Protected MPEG-4 video file".
Track.where(media_type_id: MediaType.where(name: "Protected MPEG-4 video file")).count

Find the genre with the name "Hip Hop/Rap".
Genre.where(name: "Hip Hop/Rap")

Count how many tracks belong to the "Hip Hop/Rap" genre
Track.where(genre_id: Genre.where(name: "Hip Hop/Rap")).count

Find the total amount of time required to listen to all the tracks in the database.
Track.sum(:milliseconds)

Find the highest price of any track that has the media type "MPEG audio file".
Track.where(media_type_id: MediaType.where(name: "MPEG audio file")).maximum(:unit_price)

Find the name of the most expensive track that has the media type "MPEG audio file".
Track.select(:name).where(unit_price: 0.99).where(media_type_id: MediaType.where(name: 'MPEG audio file'))

Find the 2 oldest artists.
Artist.order(:created_at).limit(2)

Find the least expensive track that has the genre "Electronica/Dance".
Track.where(genre_id: Genre.where(name: "Electronica/Dance")).minimum(:unit_price)

Find all "MPEG autio file" tracks in the genre "Electronica/Dance".
Track.where(genre_id: Genre.where(name: "Electronica/Dance")).where(media_type_id: MediaType.where(name: "MPEG autio file")).all
