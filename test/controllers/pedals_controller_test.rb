require 'test_helper'

class PedalsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pedals_index_url
    assert_response :success
  end

  test "should get edit" do
    get pedals_edit_url
    assert_response :success
  end

  test "should get new" do
    get pedals_new_url
    assert_response :success
  end

  test "should get show" do
    get pedals_show_url
    assert_response :success
  end

end
