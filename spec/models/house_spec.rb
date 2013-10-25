require_relative '../spec_helper.rb'

describe "House" do
  let(:house) {House.new}

  it "has an address" do
    house.address = "123 tree lane"
    house.save

    house.address.should eq("123 tree lane")
  end

  it "can be trick-or-treated at" do
    kid = Kid.new
    kid.age = 16
    kid.save

    house.give_candy(kid).class.should eq(Candy) 
  end

  it "knows if a kid is too old to trick-or-treat" do
    kid = Kid.new
    kid.age = 18
    kid.save

    house.too_old?(kid).should eq(true)
   end

   it "should give candy to kid under 17"
   it "should not give candy to kid 17 or over" do
     kid = Kid.new
     kid.age = 17
     kid.save

     house.give_candy(kid).should eq(nil)
   end

  it "can have a candy type" 
  it "opts to not give candy"

end
