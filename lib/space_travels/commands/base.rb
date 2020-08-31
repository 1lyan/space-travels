module SpaceTravels
  module Commands
    class Base
      attr_reader :initial_mass, :gravity
      def initialize(initial_mass, gravity)
        @initial_mass = initial_mass
        @gravity = gravity
      end

      def run
        fuel_masses = []
        continue_calc = true
        mass = initial_mass

        while continue_calc
          mass = calculation_class.new(mass: mass, gravity: @gravity).run
          if mass.negative?
            continue_calc = false
          else
            fuel_masses << mass.floor
          end
        end

        fuel_masses.inject(:+)
      end

      protected

      def calculation_class
        raise 'Calculation class must be defined in child class'
      end

    end
  end
end
