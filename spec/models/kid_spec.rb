require_relative '../spec_helper.rb'

describe "Kid" do

  let(:kid) { Kid.new }

  it "has a name" do
    kid.name = "Tyke"
    kid.name.should eq("Tyke")
  end

  it "has an age" do
    kid.age = 14
    kid.save
    k = Kid.find(:id => kid.id)
    k.age.should eq(kid.age)
  end

  it "has a bucket" do
    kid.save
    kid.bucket = Bucket.new
    kid.save
    kid.bucket.id.should_not eq(nil)
  end

  describe ".pig_out" do
    it "eats its candy" do
      # pending
      
      kid.save
      kid.bucket = Bucket.new
      kid.bucket.candy_quantity = 20
      kid.bucket.save

      kid.pig_out.should eq("happy")
      kid.bucket.save
      kid.bucket.candy_quantity.should eq(0)

    end
    it "gets sick if it eats too much" do
      
      kid.save
      kid.bucket = Bucket.new
      kid.bucket.candy_quantity = 22
      kid.bucket.save

      kid.pig_out.should eq("sick")
      kid.bucket.save
      kid.bucket.candy_quantity.should eq(0)
      
    end
  end
end
