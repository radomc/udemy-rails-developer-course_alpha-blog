require 'test_helper'

class ListCategoriesTest < ActionDispatch::IntegrationTest

  def setup
    @first_category = Category.create(name: 'sports')
    @second_category = Category.create(name: 'programming')
  end

  test 'should show categories listing' do 
    get categories_path
    assert_template 'categories/index'
    assert_select 'a[href=?]', category_path(@first_category), text: @first_category.name
    assert_select 'a[href=?]', category_path(@second_category), text: @second_category.name
  end

end
