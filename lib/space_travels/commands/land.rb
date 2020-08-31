module SpaceTravels
  module Commands
    class Land < Base

      protected

      def calculation_class
        SpaceTravels::Calculations::Land
      end

    end
  end
end
