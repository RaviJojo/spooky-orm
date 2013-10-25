class Bucket < Sequel::Model

  def empty
    self.candy_quantity = 0
  end

end
