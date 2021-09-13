require "test_helper"

class ListCategoriesTest < ActionDispatch::IntegrationTest

def setup
  @category = Category.create(name: "Sports")
  @category1 = Category.create(name: "Travel")
  @category2 = Category.create(name: "News")
end

test "should show categories listing" do
  get '/categories'
  assert_select "a[href=?]", category_path(@category), text: @category.name
  assert_select "a[href=?]", category_path(@category1), text: @category1.name
  assert_select "a[href=?]", category_path(@category2), text: @category2.name
end
end
