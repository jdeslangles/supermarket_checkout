require 'spec_helper'

describe Product  do
  before :each do
    @fr1 = Product.new(:fr1, 311)
    @sr1 = Product.new(:sr1, 500)
    @cf1 = Product.new(:cf1, 1123)
  end


  describe '#new' do
    it "instantiates a new product with a price and a code" do
      expect(@fr1).to be_an_instance_of(Product)
      expect(@sr1).to be_an_instance_of(Product)
      expect(@cf1).to be_an_instance_of(Product)
    end
  end

  describe '#price' do
    it "returns the correct price" do
      expect(@fr1.price).to eql 311
      expect(@sr1.price).to eql 500
      expect(@cf1.price).to eql 1123
    end
  end

  describe '#code' do
    it "returns the correct code" do
      expect(@fr1.code).to eql :fr1
      expect(@sr1.code).to eql :sr1
      expect(@cf1.code).to eql :cf1
    end
  end

end