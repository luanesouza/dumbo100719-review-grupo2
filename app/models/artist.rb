class Artist
  @@all = []
  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

#Class Methods
  def self.all
    @@all
  end

  #instance Methods
  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries

    # Gallery.all.select do |gallery|
    #   binding.pry
    #   gallery.artist == self
    # end

    paintings.map do |painting|
      painting.gallery
    end
  end

    def cities

      # paintings.map do |painting|
      #   #binding.pry
      #   painting.gallery.city
      # end

      galleries.map do |gallery|
        gallery.city
      end
    end

    def self.total_experience
      arr_years_experience = self.all.map do |artist|
        artist.years_experience
      end

      arr_years_experience.inject(0) do |accumulator,currrent_integer|
        acc += currrent_integer
      end
    end
  end
