class Anime

  attr_accessor :slug


  def ==(other)
    other.slug == slug
  end
end
