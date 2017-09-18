require 'test_helper'

class PedalboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pedalboards_index_url
    assert_response :success
  end

  test "should get edit" do
    get pedalboards_edit_url
    assert_response :success
  end

  test "should get new" do
    get pedalboards_new_url
    assert_response :success
  end

  test "should get show" do
    get pedalboards_show_url
    assert_response :success
  end

end
