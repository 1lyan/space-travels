module SpaceTravels
  class Error < StandardError; end
  # Your code goes here...
end

require_relative "space_travels/version"
# Planets

require_relative "space_travels/planets/base_planet"
require_relative "space_travels/planets/earth"
require_relative "space_travels/planets/mars"
require_relative "space_travels/planets/moon"

# Calculations
require_relative "space_travels/calculations/base"
require_relative "space_travels/calculations/land"
require_relative "space_travels/calculations/launch"

# Routes
require_relative "space_travels/route_point"
require_relative "space_travels/commands/base"
require_relative "space_travels/commands/launch"
require_relative "space_travels/commands/land"
require_relative "space_travels/app"

require_relative "space_travels/planet_finder"

