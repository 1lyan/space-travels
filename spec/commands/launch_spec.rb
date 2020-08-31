require 'spec_helper'

RSpec.describe SpaceTravels::Commands::Launch do
  let!(:spaceship_mass) { 28801 }
  let!(:expected_fuel_mass) { 19772 }

  it "calculates fuel mass to launch from Earth" do
    calc = SpaceTravels::Commands::Launch.new(spaceship_mass, SpaceTravels::Planets::Earth::GRAVITY)

    expect(calc.run).to eq(expected_fuel_mass)
  end

end
