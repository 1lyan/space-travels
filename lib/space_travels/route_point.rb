module SpaceTravels
  class RoutePoint

    attr_reader :planet_class, :spaceship_mass, :commands, :fuel_mass
    def initialize(planet_class, spaceship_mass, commands: [])
      @planet_class = planet_class
      @spaceship_mass = spaceship_mass
      @commands = commands
      @fuel_mass = 0
    end

    def run
      initial_mass = spaceship_mass
      commands.each do |cmd|
        fm = cmd.new(initial_mass, planet_class::GRAVITY).run
        initial_mass += fm
      end

      @fuel_mass = initial_mass - spaceship_mass
    end

  end
end