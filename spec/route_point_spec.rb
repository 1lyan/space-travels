require 'spec_helper'

RSpec.describe SpaceTravels::RoutePoint do
  let!(:spaceship_mass) { 28801 }
  let!(:fuel_mass_for_moon) { 3671 }
  let!(:fuel_mass_for_earth) { 42618 }

  it "calculates fuel mass required to land on the Moon and launch from the Moon" do
    route = SpaceTravels::RoutePoint.new(
      SpaceTravels::Planets::Moon,
      spaceship_mass,
      commands: [SpaceTravels::Commands::Land, SpaceTravels::Commands::Launch]
    )

    route.run

    expect(route.fuel_mass).to eq(fuel_mass_for_moon)
  end

  it 'calculates fuel mass required to land on Earth and launch from Earth' do
    route = SpaceTravels::RoutePoint.new(
      SpaceTravels::Planets::Earth,
      spaceship_mass,
      commands: [SpaceTravels::Commands::Land, SpaceTravels::Commands::Launch]
    )

    route.run

    expect(route.fuel_mass).to eq(fuel_mass_for_earth)
  end

end
