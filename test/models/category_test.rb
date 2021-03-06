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

  test "should be unique" do
    @category.save
    category2 = Category.new(name: "sports")
    assert_not category2.valid?
  end


  test "name should not be to long" do
    @category.name = "a" *26
    assert_not @category.valid?
  end

  test "name should not be to short" do
    @category.name = "a" *2
    assert_not @category.valid?

  end

end
