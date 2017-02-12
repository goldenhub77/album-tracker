class Album
  # Define your Album class here.
  def initialize (album_id, album_name, artists)
    @album_id = album_id
    @album_name = album_name
    @artists = artists
    @tracks = []
    @album_duration_min = 0.0
  end

  # return ID of album
  def id
    @album_id
  end
  # return title of Album
  def title
    @album_name
  end
  #return artists names
  def artists
    @artists
  end

  # return duration of album (data is in ms, convert to min)
  def duration_min
    @tracks.each do |track_info, value|
      @album_duration_min += track_info.duration_ms.to_f/1000/60
    end
    sprintf('%.2f',@album_duration_min)
  end

  # return array of hashes of each track in album
  def tracks
    @tracks
  end

  #return string (NO PUTS OR PRINTS) of summary information in the format shown
  def summary
     "\nName: #{title}\nArtist(s): #{artists}\nDuration (min.): #{duration_min}\nTracks: \n#{@tracks.map { |track| '- ' + track.title + "\n" }.join.strip}"
   end
end
