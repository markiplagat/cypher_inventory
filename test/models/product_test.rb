require "test_helper"

class ProductTest < ActiveSupport::TestCase
  test "is valid with valid attributes" do
    product = Product.new(
      name: "Milk",
      description: "Fresh milk",
      price: 2.99,
      quantity: 15
    )
    assert product.valid?
  end

  test "is invalid without a name" do
    product = Product.new(name: nil)
    assert_not product.valid?
  end

  test "is invalid with negative quantity" do
    product = Product.new(quantity: -5)
    assert_not product.valid?
  end

  test "is invalid with negative price" do
    product = Product.new(price: -1)
    assert_not product.valid?
  end
end
