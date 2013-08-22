require "spec_helper"

describe Checkout do
  before :each do
    @co = Checkout.new
  end

  describe "#new" do
    it "instantiates a new checkout" do
      expect(@co).to be_an_instance_of(Checkout)
    end
  end

  # describe "#basket"



end