module SpaceTravels
  module Commands
    class Launch < Base

      protected

      def calculation_class
        SpaceTravels::Calculations::Launch
      end

    end
  end
end
