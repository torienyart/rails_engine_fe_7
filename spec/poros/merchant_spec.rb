require 'rails_helper'

describe Merchant do
  it "can create a new Merchant" do
    attrs = {:id=>"1", :type=>"merchant", :attributes=>{:name=>"Schroeder-Jerde"}}

    merchant = Merchant.new(attrs)

    expect(merchant).to be_an_instance_of Merchant
    expect(merchant.name).to eq("Schroeder-Jerde")
    expect(merchant.id).to eq(1)
  end
end