module SpaceTravels
  module Calculations
    class Launch < Base
      COEFFICIENT1 = 0.042
      COEFFICIENT2 = 33

      def run
        (mass * gravity * COEFFICIENT1 - COEFFICIENT2).to_i
      end

    end
  end
end