class Song
    attr_accessor :artist, :name
    @@all = []

        def initialize(name)
            @name = name
            @@all << self
        end

        def self.all
            @@all
        end

        def self.new_by_filename(file)
        name = file.split(" - ")
        new_song = Song.new(name[1])
        new_song.artist_name = name[0]
        new_song
        end

        def artist_name=(name)
        new_artist = Artist.find_or_create_by_name(name)
        self.artist = new_artist
    
        end

        

end