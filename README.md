# SpaceTravels

## Usage

1. Clone repo: git clone https://github.com/1lyan/space-travels.git
2. cd space_travels
3. bundle install
4. run "./bin/execute.rb --help" in console to see how to run the program
5. Path: launch Earth, land Moon, launch Moon, land Earth and weight of equipment 28801 kg run:
 - ./bin/execute.rb --planets earth moon earth --mass 28801
6. Path: launch Earth, land Mars, launch Mars, land Earth and weight of equipment: 14606 kg run:
 - ./bin/execute.rb --planets earth mars earth --mass 14606
 7. Path: launch Earth, land Moon, launch Moon, land Mars, launch Mars, land Earth and weight of equipment 75432 kg run:
 - ./bin/execute.rb --planets earth moon mars earth --mass 75432

## Tests

rspec