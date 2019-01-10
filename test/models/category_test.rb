require 'test_helper'

  class CategoryTest < ActiveSupport::TestCase

  def setup
    @category = Category.new(name: "sports")
  end

  test "category should be valid" do
    assert @category.valid?
  end

  test "name should be presetn" do
    @category.name = " "
    assert_not @category.valid?
  end

end
