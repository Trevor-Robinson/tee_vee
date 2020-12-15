class Network
  attr_reader :name,
              :shows
  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
    main_characters = []
    shows.each do |show|
      show.characters.each do |character|
        if character.salary > 500000 && character.name == character.name.upcase
          main_characters << character
        end
      end
    end
    return main_characters
  end

  def actors_by_show
    actors_by_show = {}
    shows.each do |show|
      actors_by_show[show] = show.actors
    end
    return actors_by_show
  end

  def shows_by_actor
    actors_on_network = []
    shows_by_actor = {}
    shows.each do |show|
      actors_on_network << show.actors
    end
    actors_on_network.flatten!
    actors_on_network.uniq!
    actors_on_network.each do |actor|
      actors_shows = []
      shows.each do |show|
        if show.actors.include?(actor)
          actors_shows << show
        end
      end
      shows_by_actor[actor] = actors_shows
    end
    return shows_by_actor
  end

end
