class Candy
  attr_accessor :name, :pieces, :size

  NAMES = ["Astros", "Cadbury Egg", "Smarties", "M&M's", "Nougat", "Dragon's beard candy", "Cotton candy", "Taffy", "Botan Rice Candy", "Pretzel", "Ice cream", "Caramel", "Chocolate truffle", "Ganache", "Gummi bears", "Gummi cherries", "Menthol", "Chocolate bar", "Sintra", "Rock candy", "Hanukkah gelt", "Galaxy bar", "Dove (chocolate)", "Bit-O-Honey", "Reese's Pieces", "Almond Joy", "Hershey Bar", "Hershey's Kisses", "Kit Kat", "Maltesers", "Milk Duds", "Milky Way", "Rolo", "Snickers", "Twix", "Whoppers", "Cotton candy", "Gumdrops", "M&M's", "Salt water taffy", "Skittles", "Tootsie Roll", "Gobstopper", "Jawbreakers", "Jolly Rancher", "Life Savers", "PEZ", "Red Vines", "Twizzlers", "Lollipop", "Sour Patch Kids", "Sour Punch Straws", "Warheads", "Jelly Beans", "Reese's Peanut Butter Cups", "Swedish Fish", "Kinder Eggs", "Raw Onion", "Pennies"]
  PIECES = (1..15)
  SIZES = ["Mini", "Fun", "Value", "Normal", "King"]

  def initialize
    @name = NAMES.sample
    @pieces = rand(PIECES)
    @size = SIZES.sample
  end
  
end