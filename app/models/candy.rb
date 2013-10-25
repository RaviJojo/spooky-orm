class Candy
  attr_accessor :name, :pieces, :size

  NAMES = ["Jelly Beans", "Snickers", "Milky Way", "Reeses", "Peanut Butter Cups", "Swedish Fish", "Kinder Eggs", "Raw Onion", "Pennies"]
  PIECES = (1..15)
  SIZES = ["Mini", "Fun", "Value", "Normal", "King"]

  def initialize
    @name = NAMES.sample
    @pieces = rand(PIECES)
    @size = SIZES.sample
  end
  
end