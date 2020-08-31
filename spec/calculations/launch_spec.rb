require 'spec_helper'

RSpec.describe SpaceTravels::Calculations::Launch do
  let!(:spaceship_mass) { 28801 }
  let!(:expected_fuel_mass) { 11829 }

  it "calculates fuel mass to launch from Earth" do
    calc = SpaceTravels::Calculations::Launch.new(mass: spaceship_mass, gravity: SpaceTravels::Planets::Earth::GRAVITY)

    expect(calc.run).to eq(expected_fuel_mass)
  end

end
