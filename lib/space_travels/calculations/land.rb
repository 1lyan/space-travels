module SpaceTravels
  module Calculations
    class Land < Base
      COEFFICIENT1 = 0.033
      COEFFICIENT2 = 42

      def run
        (mass * gravity * COEFFICIENT1 - COEFFICIENT2).to_i
      end
    end
  end
end
