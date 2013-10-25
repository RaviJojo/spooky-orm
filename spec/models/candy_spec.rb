require_relative '../spec_helper.rb'

describe "Candy" do
  let(:snickers) {Candy.new}

  it "has a name" do
    snickers.name = "Snickers"
    snickers.name.should eq("Snickers")
  end

  it "has a number of pieces per package" do
    snickers.pieces = 1
    expect(snickers.pieces).to eq(1)
  end

  it "has a size" do
    snickers.size = "Fun"
    expect(snickers.size).to eq("Fun")
  end

  it "has to have properties" do
    expect(snickers.name).to_not be_nil
    expect(snickers.pieces).to_not be_nil
    expect(snickers.size).to_not be_nil
  end
end
