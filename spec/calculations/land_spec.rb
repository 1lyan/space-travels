require 'spec_helper'

RSpec.describe SpaceTravels::Calculations::Land do
  let!(:spaceship_mass) { 28801 }
  let!(:expected_fuel_mass) { 9278 }

  it "calculates fuel mass to land on Earth" do
    calc = SpaceTravels::Calculations::Land.new(mass: spaceship_mass, gravity: SpaceTravels::Planets::Earth::GRAVITY)

    expect(calc.run).to eq(expected_fuel_mass)
  end

end
