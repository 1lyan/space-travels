require 'spec_helper'

RSpec.describe SpaceTravels::Commands::Land do
  let!(:spaceship_mass) { 28801 }
  let!(:expected_fuel_mass) { 13447 }

  it "calculates fuel mass to launch from Earth" do
    calc = SpaceTravels::Commands::Land.new(spaceship_mass, SpaceTravels::Planets::Earth::GRAVITY)

    expect(calc.run).to eq(expected_fuel_mass)
  end

end
