#!/usr/bin/env ruby

require_relative '../lib/space_travels'

require 'byebug'
require 'awesome_print'

require 'optparse'

options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: bin/execute.rb --planets moon mars earth --mass 28801"

  opts.on("-p", "--planets", "A space separated list of planets") do |planets|
    options[:planets] = planets
  end

  opts.on("-m", "--mass", "Mass of a spaceship") do |mass|
    options[:mass] = mass
  end

end.parse!

options[:mass] = ARGV.last
ARGV.delete(ARGV.last)
options[:planets] = ARGV
ap options

raise 'Cannot build space routes. Provide at least 2 planets' if options[:planets].size < 2

mass = SpaceTravels::App.run(options[:planets], options[:mass].to_i)

ap("Fuel mass: #{mass}")