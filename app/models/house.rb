class House < Sequel::Model
  # attr_reader :age_limit

  # def initialize(age_limit)

  # TODO - let houses decide their own
  # age limit

  # TODO - house has candy types 
  # or none at all

  def too_old?(a_kid)
    a_kid.age >= 17
  end

  def give_candy(a_kid)
    too_old?(a_kid) ? nil : Candy.new
  end

end