module SpaceTravels
  class PlanetFinder
    def self.find(planet_name)
      case planet_name
      when 'earth'
        SpaceTravels::Planets::Earth
      when 'moon'
        SpaceTravels::Planets::Moon
      when 'mars'
        SpaceTravels::Planets::Mars
      else
        raise "Cannot find planet: #{planet_name}"
      end
    end
  end
end