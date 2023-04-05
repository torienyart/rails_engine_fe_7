class Item
  attr_reader :id, :name, :description, :unit_price, :merchant_id
  def initialize(attrs)
    @id = attrs[:id].to_i
    @name = attrs[:attributes][:name]
    @description = attrs[:attributes][:description]
    @unit_price = attrs[:attributes][:unit_price]
    @merchant_id = attrs[:attributes][:merchant_id].to_i
  end
end