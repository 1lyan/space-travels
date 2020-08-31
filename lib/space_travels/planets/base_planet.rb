module SpaceTravels
  module Planets
    class BasePlanet

      def initialize
        @route_done = false
      end

      def route_done!
        @route_done = true
      end

      def route_done?
        @route_done
      end
    end
  end
end