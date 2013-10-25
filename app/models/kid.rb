class Kid < Sequel::Model  
  one_to_one :bucket

  def pig_out
    total_candy = self.bucket.candy_quantity
    self.bucket.empty
    
    # change this number later
    if total_candy > 21
      return 'sick'
    else
      return 'happy'
    end
  end

end
