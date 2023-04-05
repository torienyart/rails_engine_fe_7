require 'rails_helper'

describe Item do
  it "can create a new item" do
    attrs = {:id=>"54",
      :type=>"item",
      :attributes=>
       {:name=>"Item Enim Error",
        :description=>
         "Odio inventore quis quia nesciunt. Libero id ipsam et. Perspiciatis porro vero quia aut aperiam. Quaerat rerum et sit earum ut tempore illum.",
        :unit_price=>775.96,
        :merchant_id=>3}}


    item = Item.new(attrs)

    expect(item).to be_an_instance_of Item
    expect(item.name).to eq("Item Enim Error")
    expect(item.id).to eq(54)
    expect(item.description).to eq("Odio inventore quis quia nesciunt. Libero id ipsam et. Perspiciatis porro vero quia aut aperiam. Quaerat rerum et sit earum ut tempore illum.")
    expect(item.unit_price).to eq(775.96)
    expect(item.merchant_id).to eq(3)
  end
end