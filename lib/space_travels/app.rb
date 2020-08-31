module SpaceTravels
  class App

    def self.run(planets_names = [], spaceship_mass)
      planets = []
      planets_names.each do |name|
        planet_class = SpaceTravels::PlanetFinder.find(name)
        planets << planet_class.new
      end

      total_mass = spaceship_mass
      planets.each do |planet|
        commands = commands_for_each_route(planet, planets)
        route = SpaceTravels::RoutePoint.new(planet.class, total_mass, commands: commands)
        route.run
        total_mass += route.fuel_mass
        planet.route_done!
      end

      total_mass - spaceship_mass
    end

    def self.first_planet?(planet, list)
      # exclude planets already included in calculations
      return false if planet.route_done?

      list.first.equal?(planet)
    end

    def self.last_planet?(planet, list)
      list.last.equal?(planet)
    end

    def self.commands_for_each_route(planet, list)
      return [SpaceTravels::Commands::Launch] if first_planet?(planet, list)

      return [SpaceTravels::Commands::Land] if last_planet?(planet, list)

      [SpaceTravels::Commands::Land, SpaceTravels::Commands::Launch]
    end

  end
end