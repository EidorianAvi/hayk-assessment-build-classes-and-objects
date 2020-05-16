require 'pry'
require './building'

building_1 = Building.new "Home", "123 Street", 1, 3
building_2 = Building.new "Not home", "456 Avenue", 2, 6
building_3 = Building.new "School",  "789 Blvd", 3, 50


binding.pry