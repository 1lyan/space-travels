module SpaceTravels
  module Calculations
    class Base

      attr_reader :mass, :gravity
      def initialize(mass: 0, gravity: 0)
        @mass = mass.to_i
        @gravity = gravity.to_f
      end

    end
  end
end
