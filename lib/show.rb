class Show
  attr_reader :name,
              :creator,
              :characters

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    total = 0
    characters.each do |character|
      total += character.salary
    end
    return total
  end

  def highest_paid_actor
    highest_paid_actor = characters[0].actor
    highest_salary = characters[0].salary
    characters.each do |character|
      if character.salary > highest_salary
        highest_paid_actor = character.actor
        highest_salary = character.salary
      end
    end
    return highest_paid_actor
  end

  def actors
    actors = []
    characters.each do |character|
      actors << character.actor
    end
    return actors
  end
end
